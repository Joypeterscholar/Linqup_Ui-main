import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/card/make_friend_card.dart';

import '../../../data/data.dart';
import '../../../screen/make_friends_details_screen.dart';

class DiscoverItem extends StatelessWidget {
  const DiscoverItem({super.key});

  void discoverItemDetailsOnTap(context, discover) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => MakeFriendsDetailsScreen(discover: discover),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      shrinkWrap: true,
      itemBuilder: (ctx, index) {
        final item = posts[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: MakeFriendCard(
            key: ValueKey(item.id),
            backgroundImage: item.imageUrl,
            categoryText: item.category.title,
            categoryIcon: item.categoryIcon.iconPath,
            description: item.description,
            userImage: item.userProfile.profilePictureUrl,
            userName: "${item.name.firstName} ${item.name.lastName}",
            userState: item.state,
            onTap: () => discoverItemDetailsOnTap(context, item),
          ),
        );
      },
    );
  }
}
