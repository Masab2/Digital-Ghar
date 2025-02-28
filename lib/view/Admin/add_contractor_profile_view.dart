import 'package:digital_ghar/config/components/TextFormFeilds/add_feild_form_feild_comp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.mw * 0.05),
        child: Column(
          children: [
            SizedBox(height: context.mh * 0.03),
            const AddFeildFormFeildComp(
                icon: IconlyLight.profile, hintText: "Full Name"),
            SizedBox(height: context.mh * 0.02),
            const AddFeildFormFeildComp(
                icon: IconlyLight.message, hintText: "Email"),
            SizedBox(height: context.mh * 0.02),
            const AddFeildFormFeildComp(
                icon: IconlyLight.profile, hintText: "Phone"),
            SizedBox(height: context.mh * 0.02),
            const AddFeildFormFeildComp(
                icon: IconlyLight.call, hintText: "Company"),
            SizedBox(height: context.mh * 0.02),
            const AddFeildFormFeildComp(
                icon: IconlyLight.location, hintText: "Address"),
            SizedBox(height: context.mh * 0.02),
            const AddFeildFormFeildComp(
                icon: IconlyLight.document, hintText: "Registration No"),
            SizedBox(height: context.mh * 0.04),
            SizedBox(
              width: double.infinity,
              height: context.mh * 0.06,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: GoogleFonts.aBeeZee(
                    color: AppColor.whiteColor,
                    fontSize: context.mh * 0.018,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
