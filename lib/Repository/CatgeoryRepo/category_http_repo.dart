import 'package:digital_ghar/Model/CatgeoryModel/category_model.dart';
import 'package:digital_ghar/Repository/CatgeoryRepo/category_repo.dart';
import 'package:digital_ghar/config/app/app_url.dart';
import 'package:digital_ghar/data/Network/network_api_service.dart';

class CategoryHttpRepo implements CategoryRepo {
  final _api = NetworkApiService();
  @override
  Future<CategoryModel> categoryApi() async {
    final response = await _api.getGetApiResponse(AppUrl.catUrl);
    return CategoryModel.fromJson(response);
  }
}
