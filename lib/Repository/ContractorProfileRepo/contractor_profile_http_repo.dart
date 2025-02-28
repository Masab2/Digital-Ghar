import 'package:digital_ghar/Model/AddContractorProfileModel/add_contractor_profile_model.dart';
import 'package:digital_ghar/Model/GetAllContractorProfileModel/get_all_contractor_profile_model.dart';
import 'package:digital_ghar/config/app/app_url.dart';
import 'package:digital_ghar/data/Network/network_api_service.dart';

import 'contractor_profile_repo.dart';

class ContractorProfileHttpRepo implements ContractorProfileRepo {
  final _api = NetworkApiService();

  @override
  Future<AddContractorProfileModel> addContraterProfileApi(
    fullName,
    email,
    phone,
    address,
    password,
    company,
    regNo,
    canManageTeam,
    canEditProfile,
    isActive,
  ) async {
    Map<String, dynamic> data = {
      "name": fullName,
      "email": email,
      "password": password,
      "phone": phone,
      "address": address,
      "company": company,
      "registrationNumber": regNo,
      "projectsCompleted": 0,
      "ratings": {"totalRatings": 0, "averageRating": 0},
      "permissions": {
        "canManageTeam": canManageTeam,
        "canEditProfile": canEditProfile
      },
      "isActive": isActive,
    };
    final response =
        await _api.getPostApiResponse(AppUrl.contractorUrlCurd, data);
    return AddContractorProfileModel.fromJson(response);
  }

  @override
  Future<GetAllContractorProfileModel> getContractorProfileApi() async {
    final response = await _api.getGetApiResponse(AppUrl.contractorUrlCurd);
    return GetAllContractorProfileModel.fromJson(response);
  }
}
