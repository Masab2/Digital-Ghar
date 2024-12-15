import 'package:digital_ghar/config/color/app_color.dart';
import 'package:flutter/material.dart';

class AuthBottomWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String buttonText;
  const AuthBottomWidget(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(color: AppColor.blueColor),
          ),
        ),
      ],
    );
  }
}