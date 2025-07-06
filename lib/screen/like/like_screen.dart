import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/data/data.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';

import '../../widget/like/like_item.dart';
import '../../widget/text/name.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key});

  @override
  State<LikeScreen> createState() {
    return _LikeScreenState();
  }
}

class _LikeScreenState extends State<LikeScreen> {
  var isMore = false;

  void onSeeMore() {
    setState(() {
      isMore = !isMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Theme.of(context)
              .colorScheme
              .onPrimaryContainer, // Change icon color
        ),
        title: Name(
          text: 'Likes',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: isMore ? users.length : 3,
              itemBuilder: (ctx, index) {
                final user = users[index];
                return LikeItem(
                  userName: '${user.firstName} ${user.lastName}',
                  profile: user.profilePictureUrl,
                  status: 'Liked your profile',
                  accept: 'Message',
                );
              },
            ),
            const Gap(
              height: 10,
            ),
            Center(
              child: CustomButton(
                onClick: onSeeMore,
                title: 'See More',
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
            ),
            const Gap(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
