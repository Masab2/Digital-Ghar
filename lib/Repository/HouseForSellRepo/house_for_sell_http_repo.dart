import 'package:digital_ghar/Model/HouseForSaleModel/house_for_sale_model.dart';
import 'package:digital_ghar/Model/SuccessModel/success_model.dart';
import 'package:digital_ghar/Repository/HouseForSellRepo/house_for_sell_repo.dart';
import 'package:digital_ghar/config/app/app_url.dart';
import 'package:digital_ghar/data/Network/network_api_service.dart';

class HouseForSellHttpRepo implements HouseForSellRepo {
  final _api = NetworkApiService();
  @override
  Future<HouseForSaleModel> houseForSellApi() async {
    final response = await _api.getGetApiResponse(AppUrl.houseForSaleUrl);
    return HouseForSaleModel.fromJson(response);
  }

  @override
  Future<SuccessModel> addhouseForSaleApi(
      title, description, price, location, image, category) async {
    Map<String, dynamic> data = {
      "title": title,
      "description": description,
      "price": price,
      "location": location,
      "image": image,
      "category": category,
    };
    final response =
        await _api.getPostApiResponse(AppUrl.addhouseForSaleUrl, data, true);
    return SuccessModel.fromJson(response);
  }
  
  @override
  Future<SuccessModel> deleteHouseForSaleApi(id) async{
    final response = await _api.getdeleteApiResponse(AppUrl.deleteHouseForSellUrl(id));
    return SuccessModel.fromJson(response);
  }
}
