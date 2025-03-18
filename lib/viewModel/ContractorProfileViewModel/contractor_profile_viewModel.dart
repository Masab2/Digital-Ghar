import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;

import 'package:digital_ghar/Model/GetAllContractorProfileModel/get_all_contractor_profile_model.dart';
import 'package:digital_ghar/Repository/ContractorProfileRepo/contractor_profile_http_repo.dart';
import 'package:digital_ghar/Repository/ContractorProfileRepo/contractor_profile_repo.dart';
import 'package:digital_ghar/config/utils/utils.dart';
import 'package:digital_ghar/data/Response/api_response.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ContractorProfileViewmodel with ChangeNotifier {
  final ContractorProfileRepo _contractorProfileRepo =
      ContractorProfileHttpRepo();

  ApiResponse<GetAllContractorProfileModel> apiResponse =
      ApiResponse.notStarted();

  // Random Password Generater
  String generateRandomPassword({int length = 12}) {
    const String upperCaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const String lowerCaseLetters = 'abcdefghijklmnopqrstuvwxyz';
    const String numbers = '0123456789';
    const String specialCharacters = '@#\$%^&*()_+-=[]{}|;:,.<>?';
    const String allCharacters =
        upperCaseLetters + lowerCaseLetters + numbers + specialCharacters;
    math.Random random = math.Random();
    String password = [
      upperCaseLetters[random.nextInt(upperCaseLetters.length)],
      lowerCaseLetters[random.nextInt(lowerCaseLetters.length)],
      numbers[random.nextInt(numbers.length)],
      specialCharacters[random.nextInt(specialCharacters.length)],
    ].join('');
    for (int i = 4; i < length; i++) {
      password += allCharacters[random.nextInt(allCharacters.length)];
    }
    return String.fromCharCodes(password.runes.toList()..shuffle());
  }

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  final ImagePicker _picker = ImagePicker();
  String _imagePath = '';
  String _imageBase64 = '';

  String get imageBase64 => _imageBase64;

  String get imagePath => _imagePath;

  Future<void> getImageFromGallery(ImageSource source) async {
    final XFile? image =
        await _picker.pickImage(source: source, imageQuality: 80);

    if (image != null) {
      _imagePath = image.path;
      File file = File(image.path);
      List<int> imageBytes = await file.readAsBytes();
      _imageBase64 = base64Encode(imageBytes);
      notifyListeners();
    } else {
      log('No Image Selected');
    }
  }

  void clearImage() {
    _imagePath = "";
    _imageBase64 = "";
    notifyListeners();
  }

  // Add ContractorProfile
  void addContractorProfileApi(
    fullName,
    email,
    phone,
    address,
    company,
    regNo,
    canManageTeam,
    canEditProfile,
    isActive,
    BuildContext context,
  ) async {
    setLoading(true);
    String password = generateRandomPassword();
    if (_imageBase64 == "") {
      Utils.showCustomSnackBar(
          context, "Please Select the Company Logo", "Validation Error");
    } else {
      _contractorProfileRepo
          .addContraterProfileApi(
        fullName.text,
        email.text,
        phone.text,
        address.text,
        password,
        company.text,
        regNo.text,
        canManageTeam,
        canEditProfile,
        isActive,
        _imageBase64,
      )
          .then((value) {
        setLoading(false);
        Utils.showCustomSnackBar(
            context, "Contractor Profile Created Sucessfully", "Succsess");
        fullName.clear();
        email.clear();
        phone.clear();
        address.clear();
        company.clear();
        regNo.clear();
      }).onError((error, stackTrace) {
        setLoading(false);
        log(error.toString());
        Utils.showCustomSnackBar(context, error.toString(), "Error");
      });
    }
  }

  List<ContractorProfileModelData> allContracters = [];
  List<ContractorProfileModelData> filteredContracters = [];

  // Get Contractor Profile
  void setContractorProfileResponse(
      ApiResponse<GetAllContractorProfileModel> response) {
    apiResponse = response;
    allContracters = response.data?.profiles ?? [];
    filteredContracters = allContracters;
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

  // Filtered Contracters According to closeest Address
  void filterContractors(String qurey) {
    if (qurey.isEmpty) {
      filteredContracters = allContracters;
      notifyListeners();
    } else {
      filteredContracters = allContracters
          .where((e) => e.address == qurey.toLowerCase())
          .toList();
      notifyListeners();
    }
  }
}
