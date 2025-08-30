import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({
    required this.userImage,
    required this.userName,
    required this.userAge,
    required this.userDistance,
    required this.userLocation,
    required this.cardHeight,
    required this.cardWidth,
    this.containerBorderColor,
    this.containerBorderWidth,
    this.containerBorderRadius,
    required this.topic,
    this.top,
    this.bottom,
    this.match,
    super.key,
  });

  final String userImage;
  final String userName;
  final String userAge;
  final String userDistance;
  final String userLocation;
  final double cardHeight;
  final double cardWidth;
  final Color? containerBorderColor;
  final double? containerBorderWidth;
  final double? containerBorderRadius;
  final bool topic;
  final double? bottom;
  final double? top;
  final String? match;

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: containerBorderColor ?? Colors.transparent,
              width: containerBorderWidth ?? 0.0),
          borderRadius: BorderRadius.circular(containerBorderRadius ?? 0.0)),
      height: cardHeight,
      width: cardWidth,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              userImage,
              width: cardWidth,
              height: cardHeight,
              fit: BoxFit.cover,
            ),
          ),
          topic
              ? Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: CustomButton(
                      onClick: () {},
                      title: match!,
                      titleStyle: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w700),
                      customPaddingHorizontal: 15,
                      customPaddingVertical: 5,
                      bottomLeftRadius: 20.0,
                      bottomRightRadius: 20.0,
                      bgColor: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                )
              :
              // 'NEW' Batch
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CustomButton(
                      onClick: () {},
                      borderColor:
                          Theme.of(context).colorScheme.onPrimaryContainer,
                      title: 'NEW',
                      titleStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                      customPaddingHorizontal: 4,
                      customPaddingVertical: 2,
                      topLeftRadius: 5,
                      topRightRadius: 5,
                      bottomLeftRadius: 5,
                      bottomRightRadius: 5,
                      bgColor: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),

          // Distance Batch
          Positioned(
            top: top,
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  CustomButton(
                    onClick: () {},
                    title: userDistance,
                    titleStyle:
                        Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                    customPaddingHorizontal: 8,
                    customPaddingVertical: 2,
                    bgColor:
                        Theme.of(context).colorScheme.outline.withOpacity(0.7),
                    bottomLeftRadius: 10.0,
                    bottomRightRadius: 10.0,
                    topLeftRadius: 10.0,
                    topRightRadius: 10.0,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Name(
                          text: userName,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                        ),
                        Gap(width: size.width * 0.02),
                        Name(
                            text: userAge,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                )),
                        Gap(width: size.width * 0.02),
                        const Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: 10,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Name(
                      text: userLocation,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
