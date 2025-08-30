import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/discover/types/discover.dart';
import 'package:linqup_mobile_application/screen/block_user_screen.dart';
import 'package:linqup_mobile_application/screen/external_profile_screen.dart';
import 'package:linqup_mobile_application/widget/card/make_friend_card.dart';
import 'package:linqup_mobile_application/widget/comment/comment_wrapper.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../widget/button/custom_button.dart';

class MakeFriendsDetailsScreen extends StatefulWidget {
  const MakeFriendsDetailsScreen({super.key, required this.discover});
  final Discover discover;

  @override
  State<MakeFriendsDetailsScreen> createState() =>
      _MakeFriendsDetailsScreenState();
}

class _MakeFriendsDetailsScreenState extends State<MakeFriendsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
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
                                      builder: (ctx) =>
                                          const ExternalProfileScreen(),
                                    ),
                                  );
                                },
                                child: const Name(text: 'View Profile'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {
                                  // Navigator.of(context).push(
                                  //   MaterialPageRoute(
                                  //     builder: (ctx) => const MessagePage(),
                                  //   ),
                                  // );
                                },
                                child: const Name(text: 'Follow Mirande'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {
                                  // Navigator.of(context).push(
                                  //   MaterialPageRoute(
                                  //     builder: (ctx) => const BlockScreen(),
                                  //   ),
                                  // );
                                },
                                child: Name(
                                    text: 'Not Interested in the Post',
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
                                child: const Name(text: 'Block Miracle'),
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
          Gap(
            width: size.width * 0.01,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: Column(
                children: [
                  Name(
                      text: widget.discover.description,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  Gap(
                    height: size.height * 0.01,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                          widget.discover.userProfile.profilePictureUrl),
                    ),
                    title: Name(
                      text:
                          '${widget.discover.name.firstName} ${widget.discover.name.lastName}',
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    subtitle: Name(
                      text: widget.discover.state,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),
                  MakeFriendCard(backgroundImage: widget.discover.imageUrl),
                  Gap(height: size.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Name(
                      text: widget.discover.content,
                      maxLines: 100,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: CommentWrapper(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
