import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/palettes/palettes.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {required this.onPressed,
      this.isLoading = false,
      this.backgroundColor,
      required this.buttonTitle,
      super.key});

  final String buttonTitle;
  final bool isLoading;
  final Color? backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPalette.primaryColorLight,
      ),
      child: Center(
        child: isLoading
            ? Container(
                constraints: BoxConstraints(
                  maxHeight: 20.w,
                  maxWidth: 20.w,
                ),
                child: Center(
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: AppPalette.kWhite,
                    strokeWidth: 3.w,
                  ),
                ),
              )
            : Text(
                buttonTitle,
              ),
      ),
    );
  }
}
