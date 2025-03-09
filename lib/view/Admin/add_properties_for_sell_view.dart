import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/components/RoundBtn/round_btn.dart';
import 'package:digital_ghar/config/components/TextFormFeilds/add_feild_form_feild_comp.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/widgets/AdminAddPropertyForSellWidgets/select_image_widget.dart';
import 'package:digital_ghar/config/widgets/widgets.dart';
import 'package:digital_ghar/viewModel/AddPropertyViewModel/add_property_viewModel.dart';
import 'package:digital_ghar/viewModel/CategoryViewModel/category_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPropertiesForSellView extends StatefulWidget {
  const AddPropertiesForSellView({super.key});

  @override
  State<AddPropertiesForSellView> createState() =>
      _AddPropertiesForSellViewState();
}

class _AddPropertiesForSellViewState extends State<AddPropertiesForSellView> {
  final _formKey = GlobalKey<FormState>();
  final propertyTitleController = TextEditingController();
  final priceController = TextEditingController();
  final locationController = TextEditingController();
  final propertyDescriptionController = TextEditingController();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CategoryViewmodel>(context, listen: false).categoryApi();
    });
    super.initState();
  }

  @override
  void dispose() {
    propertyTitleController.dispose();
    priceController.dispose();
    locationController.dispose();
    propertyDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final addPropertySellController =
        Provider.of<AddPropertyViewmodel>(context, listen: false);
    final category = Provider.of<CategoryViewmodel>(context, listen: false);
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              category.clearSelectedCategory();
              addPropertySellController.clearImage();
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        backgroundColor: AppColor.blueColor,
        title: Text(
          'Add Property Sell',
          style: GoogleFonts.aBeeZee(
            color: AppColor.whiteColor,
            fontSize: context.mh * 0.022,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.all(context.mw * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Selection
              _buildSectionTitle('Property Image'),
              SizedBox(height: context.mh * 0.015),
              const SelectAdminImageWidget(),
              SizedBox(height: context.mh * 0.025),
              // Property Title
              _buildSectionTitle('Property Title'),
              SizedBox(height: context.mh * 0.015),
              AddFeildFormFeildComp(
                controller: propertyTitleController,
                icon: Icons.title,
                hintText: "Enter Property Title",
                validator: (val) =>
                    val!.isEmpty ? 'Title cannot be empty' : null,
              ),
              SizedBox(height: context.mh * 0.025),
              _buildSectionTitle('Property Category'),
              SizedBox(height: context.mh * 0.015),
              const AdminAddPropertyForSellCategoryDropdownWidget(),
              SizedBox(height: context.mh * 0.025),
              _buildSectionTitle('Property Location'),
              SizedBox(height: context.mh * 0.015),
              AddFeildFormFeildComp(
                controller: locationController,
                icon: Icons.location_on,
                hintText: "Enter Property Address",
                validator: (val) =>
                    val!.isEmpty ? 'Location cannot be empty' : null,
              ),
              SizedBox(height: context.mh * 0.025),
              _buildSectionTitle('Property Price'),
              SizedBox(height: context.mh * 0.015),
              AddFeildFormFeildComp(
                controller: priceController,
                icon: Icons.monetization_on,
                hintText: "Enter Price",
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Price cannot be empty';
                  } else if (val.length <= 0) {
                    return 'Price cannot be empty';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: context.mh * 0.025),
              _buildSectionTitle('Property Description'),
              SizedBox(height: context.mh * 0.015),
              AddFeildFormFeildComp(
                controller: propertyDescriptionController,
                maxlines: 5,
                hintText: "Enter Property Description",
                validator: (val) =>
                    val!.isEmpty ? 'Description cannot be empty' : null,
              ),
              SizedBox(height: context.mh * 0.035),
              RoundBtn(
                text: "Add Property",
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    addPropertySellController.addHouseForSellApi(
                      propertyTitleController.text,
                      propertyDescriptionController.text,
                      priceController.text,
                      locationController.text,
                      category.selectedCategory,
                      context,
                    );
                  }
                },
                radius: 10,
              ),
              SizedBox(height: context.mh * 0.025),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.aBeeZee(
        color: AppColor.blueColor,
        fontSize: context.mh * 0.018,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
