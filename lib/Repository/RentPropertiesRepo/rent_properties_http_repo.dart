import 'package:digital_ghar/Model/RentPropertiesModel/rent_properties_model.dart';
import 'package:digital_ghar/Repository/RentPropertiesRepo/rent_properties_repo.dart';
import 'package:digital_ghar/config/app/app_url.dart';
import 'package:digital_ghar/data/Network/network_api_service.dart';

class RentPropertiesHttpRepo implements RentPropertiesRepo {
  final _api = NetworkApiService();
  @override
  Future<RentPropertiesModel> rentPropertiesApi() async {
    final response = await _api.getGetApiResponse(AppUrl.rentPropertiesUrl);
    return RentPropertiesModel.fromJson(response);
  }
}
