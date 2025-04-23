import 'package:digital_ghar/Repository/QuatationRequestRepo/quatationRequestHttpRepo.dart';
import 'package:digital_ghar/Repository/QuatationRequestRepo/quatationRequestRepo.dart';
import 'package:digital_ghar/config/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeQuotationViewModel with ChangeNotifier {
  String getSizeDescription(String size) {
    switch (size) {
      case '5 Marla':
        return "Approx. 1,125 sq. ft";
      case '10 Marla':
        return "Approx. 2,250 sq. ft";
      case '1 Kanal':
        return "Approx. 4,500 sq. ft";
      case '2 Kanal':
        return "Approx. 9,000 sq. ft";
      default:
        return "";
    }
  }

  String selectedValue = '5 Marla';
  // update radio value
  void updateRadioValue(String value) {
    selectedValue = value;
    notifyListeners();
  }

  final QuatationRequestRepo _quatationRequestRepo = QuatationRequestHttpRepo();

  void addQuatationRequestApi(
      houseSize, requirements, contractorId, BuildContext context) async {
    try {
      await _quatationRequestRepo
          .addQuatationRequestApi(houseSize, requirements, contractorId)
          .then(
        (value) {
          Utils.showCustomSnackBar(context, value.message ?? "", "Success");
        },
      ).onError(
        (error, stackTrace) {
          Utils.showCustomSnackBar(context, error.toString(), "Error");
        },
      );
    } catch (e) {
      Utils.showCustomSnackBar(context, e.toString(), "Error");
    }
  }
}
