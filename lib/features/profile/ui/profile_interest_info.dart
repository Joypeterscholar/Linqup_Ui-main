import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/profile/ui/profile_content_wrapper.dart';

import '../../../data/data.dart';
import '../../../widget/card/card_button.dart';

class ProfileInterestInfo extends StatelessWidget {
  const ProfileInterestInfo({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: ProfileContentWrapper(
        title: 'My Interests',
        content: Wrap(
          spacing: 20.0,
          runSpacing: 10.0,
          children: List.generate(
            3,
            (index) {
              final button = buttonList[index];
              return CardButton(
                cardButtonText: button.name,
                cardButtonImage: button.icon,
                borderColor: Theme.of(context).colorScheme.inversePrimary,
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                cardButtonTextStyle:
                    Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                customPaddingHorizontal: 10.0,
                customPaddingVertical: 8.0,
              );
            },
          ),
        ),
      ),
    );
  }
}
