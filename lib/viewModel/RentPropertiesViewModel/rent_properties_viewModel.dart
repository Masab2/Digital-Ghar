import 'package:digital_ghar/Model/RentPropertiesModel/rent_properties_model.dart';
import 'package:digital_ghar/Repository/RentPropertiesRepo/rent_properties_http_repo.dart';
import 'package:digital_ghar/Repository/RentPropertiesRepo/rent_properties_repo.dart';
import 'package:digital_ghar/data/Response/api_response.dart';
import 'package:flutter/material.dart';

class RentPropertiesViewmodel with ChangeNotifier {
  final RentPropertiesRepo _rentPropertiesRepo = RentPropertiesHttpRepo();

  ApiResponse<RentPropertiesModel> rentPropertiesApiResponse =
      ApiResponse.notStarted();

  var filteredHouse = <RentPropertiesData>[];
  var allHouse = <RentPropertiesData>[];

  // Set the Api Response
  void setRentPropertiesApiResponse(ApiResponse<RentPropertiesModel> value) {
    rentPropertiesApiResponse = value;
    allHouse = rentPropertiesApiResponse.data?.data ?? [];
    filteredHouse = allHouse;
    notifyListeners();
  }

  // Get the Api Response
  void getRentPropertiesApiResponse() async {
    setRentPropertiesApiResponse(ApiResponse.loading());
    try {
      var response = await _rentPropertiesRepo.rentPropertiesApi();
      setRentPropertiesApiResponse(ApiResponse.completed(response));
    } catch (e) {
      setRentPropertiesApiResponse(ApiResponse.error(e.toString()));
    }
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
