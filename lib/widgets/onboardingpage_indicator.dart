import 'dart:math';
import 'package:animation_in_boarding/widgets/onboaring_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:animation_in_boarding/constants.dart';

class OnBoardingPageIndicator extends StatelessWidget {
  final int currentPage;
  final Widget child;
  const OnBoardingPageIndicator(
      {Key? key, required this.currentPage, required this.child})
      : super(key: key);

  Color _getPageIndicatorColor(int pageIndex) {
    return currentPage > pageIndex ? kWhite : kWhite.withOpacity(0.25);
  }

  double get indicatorGap => pi / 12;
  double get indicatorLength => pi / 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: OnboardingPageIndicatorPainter(
          color: _getPageIndicatorColor(0),
          startAngle: (4 * indicatorLength) - (indicatorLength + indicatorGap),
          indicatorLength: indicatorLength,
        ),
        child: CustomPaint(
          painter: OnboardingPageIndicatorPainter(
            color: _getPageIndicatorColor(0),
            startAngle:
                (4 * indicatorLength) - (indicatorLength + indicatorGap),
            indicatorLength: indicatorLength,
          ),
          child: CustomPaint(
            painter: OnboardingPageIndicatorPainter(
              color: _getPageIndicatorColor(0),
              startAngle:
                  (4 * indicatorLength) - (indicatorLength + indicatorGap),
              indicatorLength: indicatorLength,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
