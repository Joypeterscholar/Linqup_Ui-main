import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/card/card_profile.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import 'card_button.dart';

class CardContent extends StatelessWidget {
  const CardContent(
      {this.cardButtonText,
      this.cardButtonIcon,
      this.profilePath,
      this.profileName,
      this.profileState,
      required this.text,
      super.key});
  final String? cardButtonText;
  final String? cardButtonIcon;
  final String text;
  final String? profilePath;
  final String? profileName;
  final String? profileState;

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    Widget cardTextAndIconContainer = const SizedBox();
    Widget cardProfileContainer = const SizedBox();

    if (cardButtonText!.isNotEmpty && cardButtonIcon!.isNotEmpty) {
      cardTextAndIconContainer = CardButton(
        onTap: () {},
        customPaddingHorizontal: 10.0,
        customPaddingVertical: 5.0,
        cardButtonTextStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
        backgroundColor: Colors.white.withOpacity(0.2),
        borderColor: Colors.blue.shade50,
        cardButtonText: cardButtonText!,
        cardButtonImage: cardButtonIcon!,
      );
    }

    if (profileName!.isNotEmpty &&
        profilePath!.isNotEmpty &&
        profileState!.isNotEmpty) {
      cardProfileContainer = CardProfile(
        profile: profilePath!,
        name: profileName!,
        state: profileState!,
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        cardTextAndIconContainer,
        Gap(
          height: size.height * 0.23,
        ),
        SizedBox(
          width: size.width * 0.7,
          child: Name(
              text: text,
              maxLines: 2,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  )),
        ),
        Gap(
          height: size.height * 0.02,
        ),
        cardProfileContainer,
      ],
    );
  }
}
