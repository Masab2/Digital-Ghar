import 'package:digital_ghar/config/components/RoundBtn/round_btn.dart';
import 'package:digital_ghar/config/components/TextFormFeilds/add_feild_form_feild_comp.dart';
import 'package:digital_ghar/config/widgets/AddContractorAdminWidgets/select_company_logo_widget.dart';
import 'package:digital_ghar/viewModel/ContractorProfileViewModel/contractor_profile_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:provider/provider.dart';

class AddContractorProfileView extends StatefulWidget {
  const AddContractorProfileView({super.key});

  @override
  State<AddContractorProfileView> createState() =>
      _AddContractorProfileViewState();
}

class _AddContractorProfileViewState extends State<AddContractorProfileView> {
  final contractorFullName = TextEditingController();
  final emailController = TextEditingController();
  final phone = TextEditingController();
  final company = TextEditingController();
  final address = TextEditingController();
  final regNo = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? _validateField(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return "$fieldName is required";
    }
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Phone number is required";
    } else if (!RegExp(r'^[0-9]{10,15}$').hasMatch(value)) {
      return "Enter a valid phone number (10-15 digits)";
    }
    return null;
  }

  @override
  void dispose() {
    contractorFullName.dispose();
    emailController.dispose();
    phone.dispose();
    company.dispose();
    address.dispose();
    regNo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contractorProfileViewModel =
        Provider.of<ContractorProfileViewmodel>(context, listen: false);

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.blueColor,
        title: Text(
          'Add Contractor',
          style: GoogleFonts.aBeeZee(
            color: AppColor.whiteColor,
            fontSize: context.mh * 0.022,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.mw * 0.05),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: context.mh * 0.03),
                const SelectAdminImageWidgetContracter(),
                SizedBox(height: context.mh * 0.02),
                AddFeildFormFeildComp(
                  icon: IconlyLight.profile,
                  hintText: "Full Name",
                  controller: contractorFullName,
                  validator: (value) => _validateField(value, "Full Name"),
                ),
                SizedBox(height: context.mh * 0.02),
                AddFeildFormFeildComp(
                  icon: IconlyLight.message,
                  hintText: "Email",
                  controller: emailController,
                  validator: (value) => _validateField(value, "Email"),
                ),
                SizedBox(height: context.mh * 0.02),
                AddFeildFormFeildComp(
                  icon: IconlyLight.profile,
                  hintText: "Phone",
                  controller: phone,
                  validator: (value) => _validatePhone(value),
                ),
                SizedBox(height: context.mh * 0.02),
                AddFeildFormFeildComp(
                  icon: IconlyLight.call,
                  hintText: "Company",
                  controller: company,
                  validator: (value) => _validateField(value, "Company"),
                ),
                SizedBox(height: context.mh * 0.02),
                AddFeildFormFeildComp(
                  icon: IconlyLight.location,
                  hintText: "Address",
                  controller: address,
                  validator: (value) => _validateField(value, "Address"),
                ),
                SizedBox(height: context.mh * 0.02),
                AddFeildFormFeildComp(
                  icon: IconlyLight.document,
                  hintText: "Registration No",
                  controller: regNo,
                  validator: (value) => _validateField(value, "Registration No"),
                ),
                SizedBox(height: context.mh * 0.04),
                Consumer<ContractorProfileViewmodel>(
                    builder: (context, value, child) {
                  return RoundBtn(
                    loading: value.isLoading,
                    text: "Submit",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        contractorProfileViewModel.addContractorProfileApi(
                          contractorFullName,
                          emailController,
                          phone,
                          address,
                          company,
                          regNo,
                          true,
                          true,
                          true,
                          context,
                        );
                      }
                    },
                    radius: 10,
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
