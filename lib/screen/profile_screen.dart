import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/data/data.dart';
import 'package:linqup_mobile_application/screen/block_user_screen.dart';
import 'package:linqup_mobile_application/screen/delete_account_screen.dart';
import 'package:linqup_mobile_application/screen/matches_screen.dart';
import 'package:linqup_mobile_application/screen/notification_screen.dart';
import 'package:linqup_mobile_application/screen/posts_screen.dart';
import 'package:linqup_mobile_application/screen/settings_screen.dart';
import 'package:linqup_mobile_application/screen/wallet_screen.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../features/profile/ui/profile_bio_info.dart';
import '../features/profile/ui/profile_gallery.dart';
import '../features/profile/ui/profile_header.dart';
import '../features/profile/ui/profile_interest_info.dart';
import '../features/profile/ui/profile_looking_for_info.dart';
import '../features/profile/ui/profile_occupation_info.dart';
import '../features/profile/ui/profile_place.dart';
import '../features/profile/ui/profile_refer_earn.dart';
import '../features/profile/ui/profile_wallet_button.dart';
import '../widget/button/custom_button.dart';
import '../widget/navigation_menu/navigation_menu.dart';
import '../features/profile/ui/profile_account_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(user1.profilePictureUrl),
          ),
        ),
        title: const ProfileHeader(
          name: 'Adichy Jnr',
          changeName: 'Change Profile Name',
        ),
        actions: [
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
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(blurRadius: 8, color: Colors.black26)
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) => const MatchesScreen(),
                                    ),
                                  );
                                },
                                child: const Name(text: 'Matches'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) => const PostScreen(),
                                    ),
                                  );
                                },
                                child: const Name(text: 'My Post'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) => const WalletScreen(),
                                    ),
                                  );
                                },
                                child: const Name(text: 'My Wallet'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) => const SettingsScreen(),
                                    ),
                                  );
                                },
                                child: const Name(text: 'Settings'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) =>
                                          const NotificationScreen(),
                                    ),
                                  );
                                },
                                child: const Name(text: 'Notification'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) => const BlockUserScreen(),
                                    ),
                                  );
                                },
                                child: const Name(text: 'Blocked Users'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) => const DeleteAccount(),
                                    ),
                                  );
                                },
                                child: Name(
                                    text: 'Delete Account',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .error)),
                              ),
                            ),
                            Divider(color: Theme.of(context).colorScheme.error),
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
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Column(
          children: [
            const ProfileGallery(),
            const Gap(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProfilePlace(),
                  Spacer(),
                  ProfileWalletButton(),
                ],
              ),
            ),
            const ProfileBioInfo(),
            const ProfileLookingForInfo(),
            const ProfileOccupationInfo(),
            const ProfileInterestInfo(),
            const ProfileAccountInfo(),
            const Gap(
              height: 20,
            ),
            const ProfileReferEarn(),
            const Gap(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomButton(
                onClick: () {},
                title: 'Delete Account',
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold),
                bgColor: Theme.of(context).colorScheme.error,
                customButtonWidth: MediaQuery.of(context).size.width,
                customPaddingHorizontal: 120,
                customPaddingVertical: 20,
                bottomRightRadius: 50,
                bottomLeftRadius: 50,
                topRightRadius: 50,
                topLeftRadius: 50,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}
