import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/screen/matches_screen.dart';
import 'package:linqup_mobile_application/screen/message_screen.dart';
import 'package:linqup_mobile_application/screen/posts_screen.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../features/profile/ui/profile_bio_info.dart';
import '../features/profile/ui/profile_header.dart';
import '../features/profile/ui/profile_interest_info.dart';
import '../features/profile/ui/profile_looking_for_info.dart';
import '../features/profile/ui/profile_nav.dart';
import '../features/profile/ui/profile_occupation_info.dart';
import '../features/profile/ui/profile_personal_info.dart';
import '../widget/button/custom_button.dart';
import '../features/external_profile/ui/external_profile_gallery.dart';
import '../features/profile/ui/profile_account_info.dart';
import 'block_user_screen.dart';

class ExternalProfileScreen extends StatefulWidget {
  const ExternalProfileScreen({super.key});

  @override
  State<ExternalProfileScreen> createState() {
    return _ExternalProfileScreenState();
  }
}

class _ExternalProfileScreenState extends State<ExternalProfileScreen> {
  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
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
                                child: const Name(text: 'Add to Matches'),
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
                                child: const Name(text: 'Adichy Posts'),
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
                                      builder: (ctx) => const MessagePage(),
                                    ),
                                  );
                                },
                                child: const Name(text: 'Send Message'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {},
                                child: const Name(text: 'Mute User'),
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
                                child: Name(
                                    text: 'Block User',
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
          Gap(
            width: size.width * 0.01,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Column(
          children: [
            const ExternalProfileGallery(),
            Gap(
              height: size.height * 0.01,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: ProfileHeader(
                name: 'Adichy Jnr',
                iconData: Icons.location_on,
                location: 'Yaba, Lagos',
              ),
            ),
            const ProfilePersonalInfo(),
            const ProfileBioInfo(),
            const ProfileLookingForInfo(),
            const ProfileOccupationInfo(),
            const ProfileInterestInfo(),
            const ProfileAccountInfo(),
            Gap(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomButton(
                onClick: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const BlockUserScreen(),
                    ),
                  );
                },
                title: 'Block User',
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold),
                bgColor: Theme.of(context).colorScheme.error,
                customButtonWidth: MediaQuery.of(context).size.width,
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
      bottomNavigationBar: const ProfileNav(),
    );
  }
}
