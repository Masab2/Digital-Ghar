import 'dart:io';

import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/viewModel/AddPropertyViewModel/add_property_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class SelectAdminImageWidget extends StatelessWidget {
  const SelectAdminImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AddPropertyViewmodel>(builder: (context, viewModel, child) {
      return InkWell(
        onTap: () {
          viewModel.getImageFromGallery(ImageSource.gallery);
        },
        child: viewModel.imagePath == ""
            ? Container(
                height: context.mh * 0.2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey[300]!, width: 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_photo_alternate_outlined,
                      size: context.mh * 0.05,
                      color: AppColor.blueColor,
                    ),
                    SizedBox(height: context.mh * 0.015),
                    Text(
                      'Tap to add property image',
                      style: GoogleFonts.aBeeZee(
                        color: Colors.grey[600],
                        fontSize: context.mh * 0.016,
                      ),
                    ),
                  ],
                ),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  height: context.mh * 0.2,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: FileImage(
                    File(
                      viewModel.imagePath.toString(),
                    ),
                  ),
                ),
              ),
      );
    });
  }
}