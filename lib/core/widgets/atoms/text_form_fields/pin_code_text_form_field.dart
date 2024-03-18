import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/palettes/palettes.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField(
      {this.controller, this.onChanged, this.length, super.key});

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final int? length;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: length ?? 4,
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      backgroundColor: AppPalette.kWhite,
      enableActiveFill: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      errorTextSpace: 26.w,
      autoFocus: true,
      animationDuration: const Duration(seconds: 0),
      textStyle: TextStyle(
        fontSize: 24.w,
        fontWeight: FontWeight.w700,
      ),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        fieldHeight: 64.w,
        fieldWidth: 64.w,
        borderRadius: BorderRadius.circular(8.w),
        activeColor: AppPalette.primaryColorLight,
        selectedColor: AppPalette.primaryColorLight,
        disabledColor: Colors.transparent,
        inactiveColor: Colors.transparent,
        errorBorderColor: Colors.red,
        activeFillColor: AppPalette.kInActiveFillColor.withOpacity(0.65),
        selectedFillColor: AppPalette.kActiveFillColor,
        inactiveFillColor: AppPalette.kInActiveFillColor.withOpacity(0.65),
        activeBorderWidth: 1.w,
        selectedBorderWidth: 1.w,
        inactiveBorderWidth: 1.w,
        disabledBorderWidth: 1.w,
        errorBorderWidth: 1.w,
      ),
      onChanged: onChanged,
      validator: (code) {
        if (code == null || code.length != 4) {
          return 'Please enter 4 digit numbers.';
        }
        return null;
      },
    );
  }
}
