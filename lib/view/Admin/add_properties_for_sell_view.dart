import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/components/RoundBtn/round_btn.dart';
import 'package:digital_ghar/config/components/TextFormFeilds/add_feild_form_feild_comp.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  String? selectedCategory;
  final List<String> categories = [
    'Residential Apartment',
    'Independent House',
    'Villa',
    'Commercial Space',
    'Plot/Land',
    'Farmhouse',
  ];

  @override
  void dispose() {
    propertyTitleController.dispose();
    priceController.dispose();
    locationController.dispose();
    propertyDescriptionController.dispose();
    selectedCategory = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
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
              _buildImageSelector(context),
              SizedBox(height: context.mh * 0.025),

              // Property Title
              _buildSectionTitle('Property Title'),
              SizedBox(height: context.mh * 0.015),
              AddFeildFormFeildComp(
                icon: Icons.title,
                hintText: "Enter Property Title",
                validator: (val) =>
                    val!.isEmpty ? 'Title cannot be empty' : null,
              ),
              SizedBox(height: context.mh * 0.025),
              _buildSectionTitle('Property Category'),
              SizedBox(height: context.mh * 0.015),
              _buildCategoryDropdown(context),
              SizedBox(height: context.mh * 0.025),
              _buildSectionTitle('Property Location'),
              SizedBox(height: context.mh * 0.015),
              AddFeildFormFeildComp(
                icon: Icons.location_on,
                hintText: "Enter Property Address",
                validator: (val) =>
                    val!.isEmpty ? 'Location cannot be empty' : null,
              ),
              SizedBox(height: context.mh * 0.025),
              _buildSectionTitle('Property Price'),
              SizedBox(height: context.mh * 0.015),
              const AddFeildFormFeildComp(
                  icon: Icons.monetization_on, hintText: "Enter Price"),
              SizedBox(height: context.mh * 0.025),
              _buildSectionTitle('Property Description'),
              SizedBox(height: context.mh * 0.015),
              const AddFeildFormFeildComp(
                  maxlines: 5,
                  icon: Icons.description,
                  hintText: "Enter Property Description"),
              SizedBox(height: context.mh * 0.035),
              RoundBtn(
                text: "Add Property",
                onTap: () {},
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

  Widget _buildCategoryDropdown(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.04),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonFormField<String>(
        value: selectedCategory,
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down, color: AppColor.blueColor),
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.category, color: AppColor.blueColor),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        hint: const Text('Select property category'),
        validator: (value) => value == null ? 'Please select a category' : null,
        items: categories.map((String category) {
          return DropdownMenuItem<String>(
            value: category,
            child: Text(category),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedCategory = newValue;
          });
        },
      ),
    );
  }

  Widget _buildImageSelector(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
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
      ),
    );
  }
}
