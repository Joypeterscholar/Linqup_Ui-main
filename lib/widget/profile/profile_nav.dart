import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';

import '../../screen/messages/message_page.dart';

class ProfileNav extends StatelessWidget {
  const ProfileNav({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: 10.0, right: 10.0, left: 10.0, top: 10.0),
      child: Container(
        height: 70,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              onClick: () {},
              iconData: Icons.favorite,
              iconColor: Theme.of(context).colorScheme.onPrimary,
              bgColor: Theme.of(context).colorScheme.inversePrimary,
              customPaddingVertical: 20,
              customPaddingHorizontal: 20,
              customBorderRadius: 100,
            ),
            CustomButton(
              onClick: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const MessagePage(),
                  ),
                );
              },
              title: 'Send Message',
              titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
              suffixIcon: Icons.messenger_outline,
              bgColor: Theme.of(context).colorScheme.onPrimaryContainer,
              customButtonWidth: MediaQuery.of(context).size.width * 0.7,
              customPaddingVertical: 20,
              topLeftRadius: 50,
              topRightRadius: 50,
              bottomLeftRadius: 50,
              bottomRightRadius: 50,
            )
          ],
        ),
      ),
    );
  }
}
