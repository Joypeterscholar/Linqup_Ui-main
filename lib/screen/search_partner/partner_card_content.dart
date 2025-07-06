import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/screen/search_partner/image_wrapper.dart';
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
    return SizedBox(
      child: Stack(
        children: [
          ImageWrapper(image: image),
          Container(
            height: 390,
            width: 400,
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
          // Name(text: userDistance, textColor: Colors.white, textSize: 13),
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
                    const Gap(
                      width: 20.0,
                    ),
                    CustomButton(
                      onClick: twitterHandler,
                      imageIcon: 'assets/png/twitter.png',
                    )
                  ],
                ),
                const Gap(height: 3.0),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Name(
                      text: userName,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                    const Gap(
                      width: 2.0,
                    ),
                    Name(
                      text: userAge,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Gap(height: 2.0),
                Name(
                  text: userLocation,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary),
                ),
                const Gap(height: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
