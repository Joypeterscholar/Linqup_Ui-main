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
      children: [
        cardTextAndIconContainer,
        const Gap(
          height: 140,
        ),
        SizedBox(
          width: 250,
          child: Name(
              text: text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  )),
        ),
        const Gap(height: 10),
        cardProfileContainer,
      ],
    );
  }
}
