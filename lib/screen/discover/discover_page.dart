import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/screen/discover/discover_interest.dart';
import 'package:linqup_mobile_application/screen/discover/match_card.dart';
import 'package:linqup_mobile_application/screen/search_screen/search_screen.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';

import '../../widget/button/custom_button.dart';
import '../../widget/navigation_menu/navigation_menu.dart';
import '../../widget/post_popup_menu/post_popup_menu.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttonList = ['Lagos', 'Abuja', 'Ibadan'];
    var selectedItem = 'Lagos';

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
            CustomButton(
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
            const Gap(
              width: 10,
            ),
          ],
        ),
        body: Container(
          color: Theme.of(context).colorScheme.onPrimary,
          child: const Column(
            children: [
              Gap(height: 10),
              SingleChildScrollView(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MatchCard(
                      topic: false,
                      top: 90,
                      userAge: '14',
                      userDistance: '3 km away',
                      userLocation: 'Germany',
                      userName: 'Ebube',
                      userImage: 'assets/jpg/profile.jpeg',
                      cardHeight: 170,
                      cardWidth: 120,
                    ),
                    Gap(width: 12),
                    MatchCard(
                      topic: false,
                      top: 90,
                      userAge: '24',
                      userDistance: '310 km away',
                      userLocation: 'Nigeria',
                      userName: 'Glory,',
                      userImage: 'assets/jpg/women1.jpg',
                      cardHeight: 170,
                      cardWidth: 120,
                    ),
                    Gap(width: 12),
                    MatchCard(
                      topic: false,
                      top: 90,
                      userAge: '25',
                      userDistance: '210 km away',
                      userLocation: 'Turkey',
                      userName: 'Pekky,',
                      userImage: 'assets/jpg/women2.jpg',
                      cardHeight: 170,
                      cardWidth: 120,
                    ),
                    Gap(width: 12),
                    MatchCard(
                      topic: false,
                      top: 90,
                      userAge: '30',
                      userDistance: '45 km away',
                      userLocation: 'London',
                      userName: 'Ramon,',
                      userImage: 'assets/jpg/women5.jpg',
                      cardHeight: 170,
                      cardWidth: 120,
                    ),
                  ],
                ),
              ),
              Gap(height: 10),
              DiscoverInterest(),
            ],
          ),
        ),
        bottomNavigationBar: const NavigationMenu());
  }
}
