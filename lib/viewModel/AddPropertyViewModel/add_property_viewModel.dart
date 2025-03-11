import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:digital_ghar/Repository/HouseForSellRepo/house_for_sell_http_repo.dart';
import 'package:digital_ghar/Repository/HouseForSellRepo/house_for_sell_repo.dart';
import 'package:digital_ghar/config/utils/utils.dart';
import 'package:digital_ghar/viewModel/HouseForSellViewModel/house_for_sell_view_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddPropertyViewmodel with ChangeNotifier {
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

  final HouseForSellRepo _repo = HouseForSellHttpRepo();
  void addHouseForSellApi(title, description, price, location, category,
      BuildContext context) async {
    if (_imageBase64 == "") {
      Utils.showCustomSnackBar(
          context, "Please Select  a House Image", "Error");
    } else {
      await _repo
          .addhouseForSaleApi(
              title, description, price, location, _imageBase64, category)
          .then((value) {
        Provider.of<HouseForSellViewModel>(context, listen: false)
            .houseForSellApi();
        Utils.showCustomSnackBar(context, value.message ?? '', "Success");
      }).onError((error, stackTrace) {
        log(error.toString());
        Utils.showCustomSnackBar(context, error.toString(), "Error");
      });
    }
  }

  // Delete House for sale
  void deleteHouseForSaleApi(id, BuildContext context) async {
    try {
      await _repo.deleteHouseForSaleApi(id).then((value) {
        Provider.of<HouseForSellViewModel>(context, listen: false)
            .houseForSellApi();
        Utils.showCustomSnackBar(context, value.message ?? '', "Success");
      }).onError((error, stackTrace) {
        log(error.toString());
        Utils.showCustomSnackBar(context, error.toString(), "Error");
      });
    } catch (e) {
      log(e.toString());
      Utils.showCustomSnackBar(context, e.toString(), "Error");
    }
  }

  // Update House for sale
  void updateHouseForSaleApi(title, description, price, location, category,
      BuildContext context, id) async {
    try {
      await _repo
          .updateHouseForSaleApi(
              id, title, description, price, location, category)
          .then((value) {
        Provider.of<HouseForSellViewModel>(context, listen: false)
            .houseForSellApi();
        Navigator.pop(context);
      }).onError((error, stackTrace) {
        log(error.toString());
        Utils.showCustomSnackBar(context, error.toString(), "Error");
      });
    } catch (e) {
      log(e.toString());
      Utils.showCustomSnackBar(context, e.toString(), "Error");
    }
  }
}
