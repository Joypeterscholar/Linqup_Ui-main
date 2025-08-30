import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/screen/connects_screen.dart';
import 'package:linqup_mobile_application/features/matches/ui/matches_card_wrapper.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../features/matches/ui/match_card.dart';
import '../widget/navigation_menu/navigation_menu.dart';
import 'like_screen.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Matches',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MatchesCardWrapper(
                    title: 'Likes',
                    coloredTitle: '15',
                    child: CustomButton(
                      onClick: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const LikeScreen(),
                          ),
                        );
                      },
                      iconData: Icons.favorite,
                      iconColor: Theme.of(context).colorScheme.onPrimary,
                      firstLayerPadding: 3.5,
                      customPaddingHorizontal: 17.0,
                      customPaddingVertical: 17.0,
                      firstLayerBorderColor:
                          Theme.of(context).colorScheme.inversePrimary,
                      customBorderRadius: 100,
                      firstLayerBorderRadius: 100,
                      firstLayerBorderWidth: 2.0,
                      bgColor: Theme.of(context).colorScheme.outlineVariant,
                    ),
                  ),
                  Gap(
                    width: size.width * 0.05,
                  ),
                  MatchesCardWrapper(
                    title: 'Connect',
                    coloredTitle: '32',
                    child: CustomButton(
                      onClick: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const ConnectsScreen(),
                          ),
                        );
                      },
                      iconData: Icons.message,
                      iconColor: Theme.of(context).colorScheme.onPrimary,
                      firstLayerPadding: 3.5,
                      customPaddingHorizontal: 17.0,
                      customPaddingVertical: 17.0,
                      firstLayerBorderColor:
                          Theme.of(context).colorScheme.inversePrimary,
                      customBorderRadius: 100,
                      firstLayerBorderRadius: 100,
                      firstLayerBorderWidth: 2.0,
                      bgColor: Theme.of(context).colorScheme.outlineVariant,
                    ),
                  ),
                ],
              ),
            ),
            Gap(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Name(
                    text: 'Your Matches',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color:
                            Theme.of(context).colorScheme.onPrimaryContainer),
                  ),
                  Gap(
                    width: size.width * 0.02,
                  ),
                  Name(
                    text: '47',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ],
              ),
            ),
            Gap(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Wrap(
                spacing: 20.0,
                runSpacing: 10.0,
                children: [
                  MatchCard(
                    topic: true,
                    top: size.height * 0.2,
                    match: '80% match',
                    containerBorderColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    containerBorderWidth: 4.0,
                    containerBorderRadius: 24,
                    userAge: '14',
                    userDistance: '12km away',
                    userLocation: 'Germany',
                    userName: 'Ebube',
                    userImage: 'assets/jpg/profile.jpeg',
                    cardHeight: 250,
                    cardWidth: 170,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}
