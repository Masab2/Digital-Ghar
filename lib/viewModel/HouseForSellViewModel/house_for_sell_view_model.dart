import 'package:digital_ghar/Model/HouseForSaleModel/house_for_sale_model.dart';
import 'package:digital_ghar/Repository/HouseForSellRepo/house_for_sell_http_repo.dart';
import 'package:digital_ghar/Repository/HouseForSellRepo/house_for_sell_repo.dart';
import 'package:digital_ghar/data/Response/api_response.dart';
import 'package:flutter/material.dart';

class HouseForSellViewModel with ChangeNotifier {
  final HouseForSellRepo _houseForSellRepo = HouseForSellHttpRepo();

  ApiResponse<HouseForSaleModel> houseForSellApiResponse =
      ApiResponse.notStarted();
  var filteredHouse = <HouseForSaleData>[];
  var allHouse = <HouseForSaleData>[];
  void setHouseForSellApiResponse(ApiResponse<HouseForSaleModel> response) {
    houseForSellApiResponse = response;
    allHouse = houseForSellApiResponse.data?.data ?? [];
    filteredHouse = allHouse;
    notifyListeners();
  }

  void houseForSellApi() {
    setHouseForSellApiResponse(ApiResponse.loading());
    _houseForSellRepo.houseForSellApi().then(
      (value) {
        setHouseForSellApiResponse(ApiResponse.completed(value));
      },
    ).onError(
      (error, stackTrace) {
        setHouseForSellApiResponse(ApiResponse.error(error.toString()));
      },
    );
  }

  void filterHousesByChips(
      int selectedCategoryIndex, String? selectedCategoryName) {
    if (selectedCategoryIndex == 0 || selectedCategoryName == "All") {
      filteredHouse = allHouse;
    } else {
      filteredHouse = allHouse
          .where((house) => house.category == selectedCategoryName)
          .toList();
    }
    notifyListeners();
  }

  // Filte House by Text Search
  void filterHouseBySearch(String search) {
    if (search.isEmpty) {
      filteredHouse = allHouse;
    } else {
      filteredHouse = allHouse
          .where((house) =>
              house.location.toLowerCase().contains(search.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }

  void filterProductsByPrice(double minPrice, double maxPrice) {
    filteredHouse = allHouse
        .where(
            (product) => product.price >= minPrice && product.price <= maxPrice)
        .toList();
    notifyListeners();
  }
}
