import 'dart:developer';

import 'package:digital_ghar/Model/GetAllContractorProfileModel/get_all_contractor_profile_model.dart';
import 'package:digital_ghar/Repository/ContractorProfileRepo/contractor_profile_http_repo.dart';
import 'package:digital_ghar/Repository/ContractorProfileRepo/contractor_profile_repo.dart';
import 'package:digital_ghar/config/utils/utils.dart';
import 'package:digital_ghar/data/Response/api_response.dart';
import 'package:flutter/material.dart';

class ContractorProfileViewmodel with ChangeNotifier {
  final ContractorProfileRepo _contractorProfileRepo =
      ContractorProfileHttpRepo();

  ApiResponse<GetAllContractorProfileModel> apiResponse =
      ApiResponse.notStarted();

  // Add ContractorProfile
  void addContractorProfileApi(
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
    BuildContext context,
  ) async {
    _contractorProfileRepo
        .addContraterProfileApi(
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
    )
        .then((value) {
      Utils.showCustomSnackBar(
          context, "Contractor Profile Created Sucessfully", "Succsess");
    }).onError((error, stackTrace) {
      log(error.toString());
      Utils.showCustomSnackBar(context, error.toString(), "Error");
    });
  }

  // Get Contractor Profile
  void setContractorProfileResponse(
      ApiResponse<GetAllContractorProfileModel> response) {
    apiResponse = response;
    notifyListeners();
  }

  // Hit the Api
  void getContractorProfileApi() async {
    setContractorProfileResponse(ApiResponse.loading());
    _contractorProfileRepo.getContractorProfileApi().then((value) {
      setContractorProfileResponse(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      log(error.toString());
      setContractorProfileResponse(ApiResponse.error(error.toString()));
    });
  }
}
