import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/posts/ui/posts_item.dart';

import '../widget/button/custom_button.dart';
import '../widget/gap/gap.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        automaticallyImplyLeading: true,
        actions: [
          CustomButton(
            onClick: () {},
            customPaddingHorizontal: 10.0,
            customPaddingVertical: 10.0,
            customBorderRadius: 100,
            iconData: Icons.search,
            iconColor: Theme.of(context).colorScheme.primary,
            borderColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          Gap(
            width: size.width * 0.01,
          ),
          CustomButton(
            onClick: () {},
            customPaddingHorizontal: 10.0,
            customPaddingVertical: 10.0,
            customBorderRadius: 100,
            imageIcon: 'assets/png/switch.png',
            borderColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          Gap(
            width: size.width * 0.01,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) {
          return const PostsItem();
        },
      ),
    );
  }
}
