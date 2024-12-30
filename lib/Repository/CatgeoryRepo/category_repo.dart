import 'package:digital_ghar/Model/CatgeoryModel/category_model.dart';

abstract class CategoryRepo {
  Future<CategoryModel> categoryApi();
}
