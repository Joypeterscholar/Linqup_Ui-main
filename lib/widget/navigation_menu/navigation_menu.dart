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
  Widget build(BuildContext context) {
    final navigationMenuState = Provider.of<NavigationMenuState>(context);
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    // Helper to build buttons
    Widget buildButton({
      required int index,
      required IconData icon,
      required VoidCallback onClick,
    }) {
      final isActive = navigationMenuState.activeIndex == index;
      return CustomButton(
        onClick: onClick,
        customPaddingHorizontal: 10.0,
        customPaddingVertical: 10.0,
        customBorderRadius: 100,
        iconData: icon,
        bgColor: isActive
            ? theme.colorScheme.inversePrimary
            : theme.colorScheme.onPrimary,
        iconColor: isActive ? Colors.white : Colors.purple.withOpacity(0.3),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, right: 10.0, left: 10.0),
      child: Container(
        height: size.height * 0.09,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.colorScheme.onPrimary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 2,
            )
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Home
              buildButton(
                index: 0,
                icon: Icons.home,
                onClick: () {
                  navigationMenuState.selectActiveMenu(0);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const Homepage()),
                  );
                },
              ),
              // Discover
              buildButton(
                index: 1,
                icon: Icons.assistant_navigation,
                onClick: () {
                  navigationMenuState.selectActiveMenu(1);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const DiscoverPage()),
                  );
                },
              ),
              // Add (+)
              buildButton(
                index: 2,
                icon: Icons.add,
                onClick: () {
                  navigationMenuState.selectActiveMenu(2);
                  showDialog(
                    context: context,
                    builder: (_) => Container(
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
                            width: size.width * 0.5,
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
                                        builder: (_) => const PostScreen(),
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
              ),
              // Matches
              buildButton(
                index: 3,
                icon: Icons.group,
                onClick: () {
                  navigationMenuState.selectActiveMenu(3);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const MatchesScreen()),
                  );
                },
              ),
              // Messages
              buildButton(
                index: 4,
                icon: Icons.message,
                onClick: () {
                  navigationMenuState.selectActiveMenu(4);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const MessagePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
