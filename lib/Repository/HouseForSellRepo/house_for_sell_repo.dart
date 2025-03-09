import 'package:digital_ghar/Model/HouseForSaleModel/house_for_sale_model.dart';
import 'package:digital_ghar/Model/SuccessModel/success_model.dart';

abstract class HouseForSellRepo {
  Future<HouseForSaleModel> houseForSellApi();
  Future<SuccessModel> addhouseForSaleApi(
      title, description, price, location, image, category);
  Future<SuccessModel> deleteHouseForSaleApi(id);    
}
