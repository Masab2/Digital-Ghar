import 'package:digital_ghar/Model/CatgeoryModel/category_model.dart';
import 'package:digital_ghar/Repository/CatgeoryRepo/category_http_repo.dart';
import 'package:digital_ghar/Repository/CatgeoryRepo/category_repo.dart';
import 'package:digital_ghar/data/Response/api_response.dart';
import 'package:flutter/material.dart';

class CategoryViewmodel with ChangeNotifier {
  final CategoryRepo _catRepo = CategoryHttpRepo();

  ApiResponse<CategoryModel> categoryApiResponse = ApiResponse.notStarted();
  int _selectedCategoryIndex = 0;

  int get selectedCategoryIndex => _selectedCategoryIndex;

  void updateSelectedCategory(int index) {
    _selectedCategoryIndex = index;
    notifyListeners();
  }

  // Set The Api Response
  void setCategoryAPiResponse(ApiResponse<CategoryModel> response) {
    categoryApiResponse = response;
    notifyListeners();
  }

  // Hit The Api
  void categoryApi() {
    setCategoryAPiResponse(ApiResponse.loading());
    _catRepo.categoryApi().then(
      (value) {
        setCategoryAPiResponse(ApiResponse.completed(value));
      },
    ).onError(
      (error, stackTrace) {
        setCategoryAPiResponse(ApiResponse.error(error.toString()));
      },
    );
  }
}
