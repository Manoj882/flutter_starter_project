import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {required this.onPressed, required this.buttonTitle, super.key});

  final String buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Center(
        child: Text(
          buttonTitle,
        ),
      ),
    );
  }
}
