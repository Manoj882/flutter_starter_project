import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/core/constants/size_config.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    required this.assetName,
    required this.buttonTitle,
    this.onPressed,
    super.key,
  });

  final String assetName;
  final String buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        maximumSize: const Size(double.infinity, 60),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(
                minHeight: 24.w,
                minWidth: 24.w,
              ),
              child: SvgPicture.asset(
                assetName,
                height: 24.w,
                width: 24.w,
                fit: BoxFit.cover,
              ),
            ),
            sizedBoxWidth8,
            FittedBox(
              fit: BoxFit.fill,
              child: Text(
                buttonTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
