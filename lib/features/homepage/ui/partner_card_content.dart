import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/homepage/ui/image_wrapper.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class PartnerCardContent extends StatelessWidget {
  const PartnerCardContent({
    required this.image,
    required this.userName,
    required this.userAge,
    required this.userLocation,
    required this.userDistance,
    required this.instagramHandler,
    required this.twitterHandler,
    super.key,
  });

  final String image;
  final String userName;
  final String userAge;
  final String userLocation;
  final String userDistance;
  final void Function() instagramHandler;
  final void Function() twitterHandler;

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      child: Stack(
        children: [
          ImageWrapper(image: image),
          Container(
            height: size.height * 0.55,
            width: size.width,
            decoration: BoxDecoration(
              color:
                  Theme.of(context).colorScheme.outlineVariant.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: CustomButton(
              onClick: () {},
              bgColor:
                  Theme.of(context).colorScheme.inverseSurface.withOpacity(0.2),
              topLeftRadius: 20.0,
              topRightRadius: 20.0,
              bottomLeftRadius: 20.0,
              bottomRightRadius: 20.0,
              customPaddingVertical: 5,
              customPaddingHorizontal: 10,
              title: userDistance,
              titleStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomButton(
                      onClick: instagramHandler,
                      imageIcon: 'assets/png/instagram.png',
                    ),
                    Gap(
                      width: size.width * 0.05,
                    ),
                    CustomButton(
                      onClick: twitterHandler,
                      imageIcon: 'assets/png/twitter.png',
                    )
                  ],
                ),
                Gap(height: size.height * 0.02),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Name(
                      text: userName,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                    Gap(
                      width: size.width * 0.01,
                    ),
                    Name(
                      text: userAge,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Gap(height: size.height * 0.01),
                Name(
                  text: userLocation,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary),
                ),
                Gap(height: size.height * 0.02),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
