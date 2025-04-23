import 'package:digital_ghar/config/assets/image_asset.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';

import '../../config/widgets/ContractorAuthWidgets/contractor_login_btn_widget.dart';
import '../../config/widgets/widgets.dart';

class ContracterAuthView extends StatefulWidget {
  const ContracterAuthView({super.key});

  @override
  State<ContracterAuthView> createState() => _ContracterAuthViewState();
}

class _ContracterAuthViewState extends State<ContracterAuthView> {
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
                  ContractorLoginEmailWidget(
                    emailController: _emailController,
                  ),
                  0.02.ph(context),
                  ValueListenableBuilder(
                    valueListenable: _obscures,
                    builder: (context, value, child) {
                      return ContractorLoginPasswordInputWidget(
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
                  ContractorLoginBtnWidget(
                    emailController: _emailController,
                    passwordController: _passwordController,
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
