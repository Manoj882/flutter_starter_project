import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/gradient_borders.dart';

class OnBoardPageItem extends StatelessWidget {
  const OnBoardPageItem({required this.pageTitle, super.key});

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 45.w),
      height: 222.w,
      decoration: BoxDecoration(
        color: const Color(0xFFEDF6F1),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF22AD5C).withOpacity(1),
              const Color(0xFF72E3A1).withOpacity(0.1),
            ],
          ),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.w),
        ),
      ),
      child: Center(
        child: Text(pageTitle),
      ),
    );
  }
}
