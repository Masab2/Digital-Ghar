import 'package:digital_ghar/Model/SuccessModel/success_model.dart';
import 'package:digital_ghar/Repository/QuatationRequestRepo/quatationRequestRepo.dart';
import 'package:digital_ghar/config/app/app_url.dart';
import 'package:digital_ghar/data/Network/network_api_service.dart';
import 'package:digital_ghar/service/LocalStorage/local_storage.dart';

class QuatationRequestHttpRepo implements QuatationRequestRepo {
  final _api = NetworkApiService();
  final LocalStorage localStorage = LocalStorage();
  @override
  Future<SuccessModel> addQuatationRequestApi(
      houseSize, requirements, contractorId) async {
    var userId = await localStorage.readValue('id');
    Map<String, dynamic> data = {
      "houseSize": houseSize,
      "requirements": requirements,
      "userId": userId,
      "contractorId": contractorId,
    };
    final response =
        await _api.getPostApiResponse(AppUrl.addQuatationUrl, data, false);
    return SuccessModel.fromJson(response);
  }

  @override
  Future<SuccessModel> predictCostApi(houseSize, requirements) async {
    Map<String, dynamic> data = {
      "houseSize": houseSize,
      "requirements": requirements,
    };
    final response =
        await _api.getPostApiResponse(AppUrl.predictCostUrl, data, false);
    return SuccessModel.fromJson(response);
  }
  
  @override
  Future<SuccessModel> sendResponseToUserApi(estimatedCost, timeTaken, additionalNotes) async{
    Map<String, dynamic> data = {
      "estimatedCost": estimatedCost,
      "timeTaken": timeTaken,
      "additionalNotes": additionalNotes,
    };
    final response = await _api.getPostApiResponse(AppUrl.sendResponseToUserUrl, data, false);
    return SuccessModel.fromJson(response);
  }
}
