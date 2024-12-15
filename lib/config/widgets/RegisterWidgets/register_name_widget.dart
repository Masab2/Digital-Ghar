import 'package:digital_ghar/config/components/TextFormFeilds/auth_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class RegisterNameWidget extends StatelessWidget {
  final TextEditingController nameController;
  const RegisterNameWidget({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return AuthTextFormFeildComp(
      controller: nameController,
      hintText: "Display Name",
      icon: IconlyBold.profile,
    );
  }
}
