import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/discover/ui/discover_interest.dart';
import 'package:linqup_mobile_application/features/matches/ui/match_card.dart';
import 'package:linqup_mobile_application/screen/search_screen.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';

import '../widget/button/custom_button.dart';
import '../widget/navigation_menu/navigation_menu.dart';
import '../features/post/ui/post_popup_menu.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttonList = ['Lagos', 'Abuja', 'Ibadan'];
    var selectedItem = 'Lagos';
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PostpopUpMenu(
                  verticalPadding: 0,
                  horizontalPadding: 10,
                  selectedItem: selectedItem,
                  buttonList: buttonList),
              Text(
                'Discover',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CustomButton(
                onClick: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const SearchScreen(
                          title: 'Discover From',
                          searchHintTitle: 'Search through locations'),
                    ),
                  );
                },
                customPaddingHorizontal: 10.0,
                customPaddingVertical: 10.0,
                customBorderRadius: 100,
                iconData: Icons.search,
                iconColor: Theme.of(context).colorScheme.primary,
                borderColor: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ],
        ),
        body: Container(
          color: Theme.of(context).colorScheme.onPrimary,
          child: Column(
            children: [
              Gap(height: size.height * 0.01),
              SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 10.0),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MatchCard(
                        topic: false,
                        top: size.height * 0.11,
                        userAge: '14',
                        userDistance: '3 km away',
                        userLocation: 'Germany',
                        userName: 'Ebube',
                        userImage: 'assets/jpg/profile.jpeg',
                        cardHeight: size.height * 0.22,
                        cardWidth: size.width * 0.3,
                      ),

                    ],
                  ),
                ),
              ),
              Gap(height: size.height * 0.01),
              const DiscoverInterest(),
            ],
          ),
        ),
        bottomNavigationBar: const NavigationMenu());
  }
}
