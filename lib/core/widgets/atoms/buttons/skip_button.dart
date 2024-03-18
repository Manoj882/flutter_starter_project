import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/constants/text_constants.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({required this.onTap, super.key});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 5.w,
          horizontal: 10.w,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFF3F4F6),
          borderRadius: BorderRadius.circular(6.w),
        ),
        child: Text(
          TextConstants.kSkip,
          style: TextStyle(
            color: const Color(0xFF374151),
            fontSize: 14.w,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
