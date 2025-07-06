import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/screen/matches/matches_page.dart';
import 'package:linqup_mobile_application/screen/messages/message_page.dart';
import 'package:linqup_mobile_application/screen/posts/post_screen.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/profile/profile_bio_info.dart';
import 'package:linqup_mobile_application/widget/profile/profile_header.dart';
import 'package:linqup_mobile_application/widget/profile/profile_interest_info.dart';
import 'package:linqup_mobile_application/widget/profile/profile_looking_for_info.dart';
import 'package:linqup_mobile_application/widget/profile/profile_nav.dart';
import 'package:linqup_mobile_application/widget/profile/profile_occupation_info.dart';
import 'package:linqup_mobile_application/widget/profile/profile_personal_info.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../../widget/button/custom_button.dart';
import '../../widget/external_profile/external_profile_gallery.dart';
import '../../widget/profile/profile_account_info.dart';
import '../block/block_screen.dart';

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
                                      builder: (ctx) => const MatchesPage(),
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
                                      builder: (ctx) => const BlockScreen(),
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
          const Gap(
            width: 10,
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
            const Gap(
              height: 10,
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
            const Gap(
              height: 20,
            ),
            CustomButton(
              onClick: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const BlockScreen(),
                  ),
                );
              },
              title: 'Block User',
              titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold),
              bgColor: Theme.of(context).colorScheme.error,
              customButtonWidth: MediaQuery.of(context).size.width * 0.9,
              customPaddingVertical: 20,
              bottomRightRadius: 50,
              bottomLeftRadius: 50,
              topRightRadius: 50,
              topLeftRadius: 50,
            )
          ],
        ),
      ),
      bottomNavigationBar: const ProfileNav(),
    );
  }
}
