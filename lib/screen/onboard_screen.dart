import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/onboard/ui/onboard_slider.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int _currentIndexSlide = 0;

  final int totalIndexSlide = 5;
  final CarouselSliderController _carouselController =
      CarouselSliderController();


  @override
  Widget build(context) {
  final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            Expanded(
                              child: OnboardSlider(
                                controller: _carouselController,
                                currentIndex: _currentIndexSlide,
                                onPageChange: (index) {
                                  setState(() {
                                    _currentIndexSlide = index;
                                  });
                                },
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                      onClick: () {
                                        _carouselController.jumpToPage(4);
                                      },
                                      title: 'SKIP',
                                      titleStyle: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: List.generate(totalIndexSlide,
                                            (index) {
                                          bool isActive =
                                              index == _currentIndexSlide;
                                          return AnimatedContainer(
                                            duration: const Duration(
                                                milliseconds: 300),
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            height: size.height * 0.01,
                                            width: isActive ? size.width * 0.1 : size.width * 0.03,
                                            decoration: BoxDecoration(
                                              color: isActive
                                                  ? Theme.of(context)
                                                      .colorScheme
                                                      .onPrimaryContainer
                                                  : Theme.of(context)
                                                      .colorScheme
                                                      .outlineVariant,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                    CustomButton(
                                      onClick: () {
                                        if (_currentIndexSlide < 4) {
                                          _carouselController.nextPage();
                                        } else {
                                          Navigator.pushNamed(
                                              context, '/sign-up');
                                        }
                                      },
                                      title: 'NEXT',
                                      titleStyle: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
