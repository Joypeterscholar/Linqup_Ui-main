import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/data/data.dart';

class OnboardSlider extends StatefulWidget {
  final int currentIndex;
  final void Function(int) onPageChange;
  final CarouselSliderController controller;

  const OnboardSlider({
    required this.currentIndex,
    required this.onPageChange,
    required this.controller,
    super.key,
  });

  @override
  State<OnboardSlider> createState() => _OnboardSliderState();
}

class _OnboardSliderState extends State<OnboardSlider> {
  @override
  Widget build(context) {
    return CarouselSlider(
      carouselController: widget.controller,
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.78,
          initialPage: 0,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          enableInfiniteScroll: false,
          onPageChanged: (index, reason) {
            widget.onPageChange(index);
          }),
      items: sliderItems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: i,
            );
          },
        );
      }).toList(),
    );
  }
}
