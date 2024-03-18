import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/features/onboard/presentation/widgets/atoms/mobile/on_board_item.dart';

class OnBoardSection extends StatefulWidget {
  const OnBoardSection({super.key});

  @override
  State<OnBoardSection> createState() => _OnBoardSectionState();
}

class _OnBoardSectionState extends State<OnBoardSection> {
  final PageController _controller = PageController(initialPage: 0);

  double _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(maxHeight: 222.w),
          child: PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (newPage) {
              setState(() {
                _currentPage = newPage.toDouble();
              });
            },
            children: [
              OnBoardPageItem(pageTitle: 'page one'),
              OnBoardPageItem(pageTitle: 'page two'),
            ],
          ),
        ),
        SizedBox(
          height: 50.w,
        ),
        Center(
          child: DotsIndicator(
            dotsCount: 2,
            position: _currentPage,
            decorator: DotsDecorator(
              /// TODO: Need to update Color, poor visibility while using current color
              color: const Color(0xFFDAF8E6),
              size: Size.square(8.w),
              activeColor: const Color(0xFF22AD5C),
              activeSize: Size(35.w, 8.w),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.w)),
            ),
          ),
        ),
      ],
    );
  }
}
