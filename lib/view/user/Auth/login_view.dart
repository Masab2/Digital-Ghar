import 'package:digital_ghar/config/assets/image_asset.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/routes/routes_names.dart';

import 'package:flutter/material.dart';

import '../../../config/widgets/widgets.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ValueNotifier<bool> _obscures = ValueNotifier(true);

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _obscures.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            0.05.ph(context),
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
                  LoginEmailWidget(
                    emailController: _emailController,
                  ),
                  0.02.ph(context),
                  ValueListenableBuilder(
                    valueListenable: _obscures,
                    builder: (context, value, child) {
                      return LoginPasswordInputWidget(
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
                  LoginBtnWidget(
                    emailController: _emailController,
                    passwordController: _passwordController,
                  ),
                  0.02.ph(context),
                  AuthBottomWidget(
                    text: "Dont't have an Account?",
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesNames.registerView);
                    },
                    buttonText: "Sign Up",
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
