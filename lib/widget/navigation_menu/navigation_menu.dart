import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/providers/state_manager/navigation_menu_state.dart';
import 'package:linqup_mobile_application/screen/discover_screen.dart';
import 'package:linqup_mobile_application/screen/home_screen.dart';
import 'package:linqup_mobile_application/screen/matches_screen.dart';
import 'package:linqup_mobile_application/screen/message_screen.dart';
import 'package:linqup_mobile_application/screen/post_screen.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:provider/provider.dart';

import '../text/name.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(context) {
    final navigationMenuState = Provider.of<NavigationMenuState>(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, right: 10.0, left: 10.0),
      child: Container(
        height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 2,
              offset: const Offset(0, 0),
            )
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                onClick: () => {
                  navigationMenuState.selectActiveMenu(0),
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homepage(),
                    ),
                  )
                },
                customPaddingHorizontal: 10.0,
                customPaddingVertical: 10.0,
                customBorderRadius: 100,
                iconData: Icons.home,
                bgColor: navigationMenuState.activeIndex == 0
                    ? Theme.of(context).colorScheme.inversePrimary
                    : Theme.of(context).colorScheme.onPrimary,
                iconColor: navigationMenuState.activeIndex == 0
                    ? Colors.white
                    : Colors.purple.withOpacity(0.5),
              ),
              CustomButton(
                onClick: () => {
                  navigationMenuState.selectActiveMenu(1),
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DiscoverPage(),
                    ),
                  ),
                },
                customPaddingHorizontal: 10.0,
                customPaddingVertical: 10.0,
                customBorderRadius: 100,
                iconData: Icons.assistant_navigation,
                bgColor: navigationMenuState.activeIndex == 1
                    ? Theme.of(context).colorScheme.inversePrimary
                    : Theme.of(context).colorScheme.onPrimary,
                iconColor: navigationMenuState.activeIndex == 1
                    ? Colors.white
                    : Colors.purple.withOpacity(0.3),
              ),
              CustomButton(
                onClick: () {
                  navigationMenuState.selectActiveMenu(2);
                  showDialog(
                    context: context,
                    builder: (context) => Container(
                      margin: const EdgeInsets.only(bottom: 60, left: 80),
                      child: SimpleDialog(
                        backgroundColor: Colors.transparent,
                        alignment: Alignment.bottomCenter,
                        insetPadding: EdgeInsets.zero,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 25,
                            ),
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(blurRadius: 8, color: Colors.black26)
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: const Name(text: 'Status'),
                                ),
                                const Divider(),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => const PostScreen(),
                                      ),
                                    );
                                  },
                                  child: const Name(text: 'Post'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                customPaddingHorizontal: 10.0,
                customPaddingVertical: 10.0,
                customBorderRadius: 100,
                iconData: Icons.add,
                bgColor: navigationMenuState.activeIndex == 2
                    ? Theme.of(context).colorScheme.inversePrimary
                    : Theme.of(context).colorScheme.onPrimary,
                iconColor: navigationMenuState.activeIndex == 2
                    ? Colors.white
                    : Colors.purple.withOpacity(0.3),
              ),
              CustomButton(
                onClick: () => {
                  navigationMenuState.selectActiveMenu(3),
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MatchesScreen(),
                    ),
                  ),
                },
                customPaddingHorizontal: 10.0,
                customPaddingVertical: 10.0,
                customBorderRadius: 100,
                iconData: Icons.group,
                bgColor: navigationMenuState.activeIndex == 3
                    ? Theme.of(context).colorScheme.inversePrimary
                    : Theme.of(context).colorScheme.onPrimary,
                iconColor: navigationMenuState.activeIndex == 3
                    ? Colors.white
                    : Colors.purple.withOpacity(0.3),
              ),
              CustomButton(
                onClick: () => {
                  navigationMenuState.selectActiveMenu(4),
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MessagePage(),
                    ),
                  ),
                },
                customPaddingHorizontal: 10.0,
                customPaddingVertical: 10.0,
                customBorderRadius: 100,
                iconData: Icons.message,
                bgColor: navigationMenuState.activeIndex == 4
                    ? Theme.of(context).colorScheme.inversePrimary
                    : Theme.of(context).colorScheme.onPrimary,
                iconColor: navigationMenuState.activeIndex == 4
                    ? Colors.white
                    : Colors.purple.withOpacity(0.3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
