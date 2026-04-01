import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.activeIndex});

  final int activeIndex;

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex, 
    count: 4,
    effect: WormEffect(
      dotColor: Color.fromARGB(255, 228, 231, 255),
      dotWidth: 25,
      dotHeight: 6,
      activeDotColor: Color.fromARGB(255, 231, 111, 81)
    ),

  );
  
  @override
  Widget build(BuildContext context) {
    return buildIndicator();
  }
}