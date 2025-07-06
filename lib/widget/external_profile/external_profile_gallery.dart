import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/data/data.dart';

import '../card/card_button.dart';

class ExternalProfileGallery extends StatelessWidget {
  const ExternalProfileGallery({super.key});

  @override
  Widget build(context) {
    return Stack(
      children: [
        Image.asset(
          user1.profilePictureUrl,
          fit: BoxFit.cover,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
        Positioned(
          bottom: 25,
          left: 0,
          right: 0,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                growable: true,
                5,
                (index) {
                  final button = buttonList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CardButton(
                      cardButtonText: button.name,
                      cardButtonImage: button.icon,
                      borderColor:
                          Theme.of(context).colorScheme.onPrimaryContainer,
                      backgroundColor: Theme.of(context).colorScheme.onPrimary,
                      cardButtonTextStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                              ),
                      customPaddingHorizontal: 10.0,
                      customPaddingVertical: 8.0,
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
