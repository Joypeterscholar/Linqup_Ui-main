import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/providers/state_manager/make_and_search_state.dart';
import 'package:linqup_mobile_application/screen/like/like_screen.dart';
import 'package:linqup_mobile_application/screen/messages/message_page.dart';
import 'package:linqup_mobile_application/screen/notification/notification_screen.dart';
import 'package:linqup_mobile_application/screen/profile/profile_screen.dart';
import 'package:linqup_mobile_application/screen/search_screen/search_screen.dart';
import 'package:linqup_mobile_application/screen/settings/settings_screen.dart';
import 'package:linqup_mobile_application/widget/navigation_menu/navigation_menu.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';
import 'package:provider/provider.dart';

import '../../widget/button/custom_button.dart';
import '../../widget/gap/gap.dart';
import '../../widget/make_search_friends/make_and_search_button_wrapper.dart';
import '../../widget/make_search_friends/make_friends_page_content.dart';
import '../../widget/status_wrapper/status_wrapper.dart';
import '../search_partner/search_partner_page.dart';

const logo = 'assets/png/linqup_logo.png';
const profile = 'assets/jpg/profile.jpeg';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() {
    return _MakeFriends();
  }
}

class _MakeFriends extends State<Homepage> {
  void makeFriendsHandler(toggleState) {
    toggleState.togglePage(true);
  }

  void searchPartnerHandler(toggleState) {
    toggleState.togglePage(false);
  }

  @override
  Widget build(context) {
    final toggleState = Provider.of<MakeAndSearchStateNav>(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: toggleState.isActive
            ? Image.asset(
                logo,
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  profile,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
        actions: [
          toggleState.isActive
              ? Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: CustomButton(
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => const NotificationScreen(),
                        ),
                      );
                    },
                    customPaddingHorizontal: 10.0,
                    customPaddingVertical: 10.0,
                    customBorderRadius: 100,
                    iconData: Icons.notifications_none_rounded,
                    iconColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    borderColor: Theme.of(context).colorScheme.inversePrimary,
                  ),
                )
              : Row(
                  children: [
                    CustomButton(
                      onClick: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const LikeScreen(),
                          ),
                        );
                      },
                      customPaddingHorizontal: 10.0,
                      customPaddingVertical: 10.0,
                      customBorderRadius: 100,
                      iconData: Icons.favorite,
                      iconColor: Theme.of(context).colorScheme.primary,
                      borderColor: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    const Gap(
                      width: 10,
                    ),
                    CustomButton(
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (context) => Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: SimpleDialog(
                              backgroundColor: Colors.transparent,
                              alignment: Alignment.topRight,
                              insetPadding: EdgeInsets.zero,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 25,
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.95),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                          blurRadius: 8, color: Colors.black26)
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Icon(Icons.close),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (ctx) =>
                                                    const ProfileScreen(),
                                              ),
                                            );
                                          },
                                          child: const Name(text: 'Profile'),
                                        ),
                                      ),
                                      const Divider(),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (ctx) =>
                                                    const SearchScreen(
                                                  title: 'Search',
                                                  searchHintTitle:
                                                      'Search by Gender, age, location, interests',
                                                ),
                                              ),
                                            );
                                          },
                                          child: const Name(text: 'Search'),
                                        ),
                                      ),
                                      const Divider(),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (ctx) =>
                                                    const SettingsScreen(),
                                              ),
                                            );
                                          },
                                          child: const Name(text: 'Settings'),
                                        ),
                                      ),
                                      const Divider(),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (ctx) =>
                                                    const MessagePage(),
                                              ),
                                            );
                                          },
                                          child: const Name(text: 'Messages'),
                                        ),
                                      ),
                                      const Divider(),
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
                      imageIcon: 'assets/png/switch.png',
                      iconColor: Theme.of(context).colorScheme.primary,
                      borderColor: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    const Gap(
                      width: 10,
                    ),
                  ],
                )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            toggleState.isActive ? const StatusWrapper() : const SizedBox(),
            const Gap(height: 20),
            MakeFriendsAndSearchPartnerButtonWrapper(
              makeFriendsHandler: () => makeFriendsHandler(toggleState),
              searchPartnerHandler: () => searchPartnerHandler(toggleState),
            ),
            const Gap(height: 10),
            Expanded(
              child: toggleState.isActive
                  ? const MakeFriendsPageContent()
                  : const SearchPartnerPage(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}
