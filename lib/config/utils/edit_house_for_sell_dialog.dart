import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/components/TextFormFeilds/add_feild_form_feild_comp.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/viewModel/AddPropertyViewModel/add_property_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class EditPropertyDialog extends StatefulWidget {
  final AddPropertyViewmodel addPropertyViewmodel;
  final String propertyId;
  final Map<String, dynamic> propertyData;

  const EditPropertyDialog({
    super.key,
    required this.addPropertyViewmodel,
    required this.propertyId,
    required this.propertyData,
  });

  static void show(
    BuildContext context,
    AddPropertyViewmodel addPropertyViewmodel,
    String propertyId,
    Map<String, dynamic> propertyData,
  ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => EditPropertyDialog(
        addPropertyViewmodel: addPropertyViewmodel,
        propertyId: propertyId,
        propertyData: propertyData,
      ),
    );
  }

  @override
  State<EditPropertyDialog> createState() => _EditPropertyDialogState();
}

class _EditPropertyDialogState extends State<EditPropertyDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController propertyTitleController;
  late TextEditingController propertyDescriptionController;
  late TextEditingController propertyPriceController;
  late TextEditingController propertyLocationController;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    // Initialize controllers with existing property data
    propertyTitleController = TextEditingController(text: widget.propertyData['title'] ?? '');
    propertyDescriptionController = TextEditingController(text: widget.propertyData['description'] ?? '');
    propertyPriceController = TextEditingController(text: widget.propertyData['price']?.toString() ?? 'No Price');
    propertyLocationController = TextEditingController(text: widget.propertyData['location'] ?? '');
  }

  @override
  void dispose() {
    propertyTitleController.dispose();
    propertyDescriptionController.dispose();
    propertyPriceController.dispose();
    propertyLocationController.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 8,
      backgroundColor: Colors.transparent,
      child: Container(
        width: context.mw * 0.9,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeader(context),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.mw * 0.05,
                vertical: context.mh * 0.02,
              ),
              child: Form(
                key: _formKey,
                child: _buildForm(context),
              ),
            ),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.mw * 0.05,
        vertical: context.mh * 0.02,
      ),
      decoration: BoxDecoration(
        color: AppColor.blueColor.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(context.mw * 0.02),
            decoration: BoxDecoration(
              color: AppColor.blueColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              IconlyBold.edit,
              color: AppColor.blueColor,
              size: context.mw * 0.06,
            ),
          ),
          SizedBox(width: context.mw * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Edit Property',
                  style: GoogleFonts.aBeeZee(
                    fontSize: context.mh * 0.022,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blueColor,
                  ),
                ),
                SizedBox(height: context.mh * 0.005),
                Text(
                  'Update property details',
                  style: GoogleFonts.aBeeZee(
                    fontSize: context.mh * 0.014,
                    color: AppColor.greyColor,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
            color: AppColor.greyColor,
            iconSize: context.mw * 0.05,
          ),
        ],
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AddFeildFormFeildComp(
          controller: propertyTitleController,
          icon: IconlyBold.paper,
          hintText: "Enter Property Title",
          validator: (val) => val!.isEmpty ? 'Title cannot be empty' : null,
        ),
        SizedBox(height: context.mh * 0.015),
        AddFeildFormFeildComp(
          controller: propertyPriceController,
          icon: IconlyBold.wallet,
          hintText: "Enter Property Price",
          validator: (val) {
            if (val!.isEmpty) return 'Price cannot be empty';
            if (double.tryParse(val) == null) return 'Please enter a valid price';
            return null;
          },
        ),
        SizedBox(height: context.mh * 0.015),
        AddFeildFormFeildComp(
          controller: propertyLocationController,
          icon: IconlyBold.location,
          hintText: "Enter Property Location",
          validator: (val) => val!.isEmpty ? 'Location cannot be empty' : null,
        ),
        SizedBox(height: context.mh * 0.015),
        AddFeildFormFeildComp(
          controller: propertyDescriptionController,
          hintText: "Enter Property Description",
          validator: (val) => val!.isEmpty ? 'Description cannot be empty' : null,
        ),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.mw * 0.05,
        vertical: context.mh * 0.015,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.05),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: context.mw * 0.04,
                vertical: context.mh * 0.01,
              ),
            ),
            child: Text(
              'Cancel',
              style: GoogleFonts.aBeeZee(
                fontSize: context.mh * 0.016,
                color: AppColor.greyColor,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.blueColor,
              padding: EdgeInsets.symmetric(
                horizontal: context.mw * 0.04,
                vertical: context.mh * 0.015,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
            ),
            child: isLoading
                ? SizedBox(
                    width: context.mw * 0.05,
                    height: context.mw * 0.05,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColor.whiteColor),
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        IconlyBold.tick_square,
                        color: AppColor.whiteColor,
                        size: context.mw * 0.04,
                      ),
                      SizedBox(width: context.mw * 0.01),
                      Text(
                        'Update Property',
                        style: GoogleFonts.aBeeZee(
                          fontSize: context.mh * 0.016,
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}