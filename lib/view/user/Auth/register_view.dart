import 'package:digital_ghar/config/assets/image_asset.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';

import '../../../config/widgets/widgets.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final ValueNotifier<bool> _obscures = ValueNotifier(true);

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _obscures.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            0.03.ph(context),
            const Center(
              child: Image(
                image: AssetImage(ImageAsset.logo),
              ),
            ),
            0.10.ph(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
              child: Column(
                children: [
                  RegisterNameWidget(
                    nameController: _nameController,
                  ),
                  0.02.ph(context),
                  RegisterEmailWidget(
                    emailController: _emailController,
                  ),
                  0.02.ph(context),
                  ValueListenableBuilder(
                    valueListenable: _obscures,
                    builder: (context, value, child) {
                      return RegisterPasswordInputWidget(
                        controller: _passwordController,
                        obsecurevalue: _obscures.value,
                        suffixIcon: InkWell(
                          onTap: () {
                            _obscures.value = !_obscures.value;
                          },
                          child: _obscures.value
                              ? const Icon(
                                  Icons.visibility_off,
                                )
                              : const Icon(
                                  Icons.visibility,
                                ),
                        ),
                      );
                    },
                  ),
                  0.04.ph(context),
                  RegisterBtnWidget(
                    emailController: _emailController,
                    passwordController: _passwordController,
                    nameController: _nameController,
                  ),
                  0.02.ph(context),
                  AuthBottomWidget(
                    text: "Already have an Account?",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    buttonText: "Sign In",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
