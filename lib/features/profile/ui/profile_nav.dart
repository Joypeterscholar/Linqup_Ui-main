import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';

import '../../../screen/message_screen.dart';
import '../../../widget/gap/gap.dart';

class ProfileNav extends StatelessWidget {
  const ProfileNav({super.key});

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          bottom: 10.0, right: 10.0, left: 10.0, top: 10.0),
      child: Container(
        height: size.height * 0.08,
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
            Gap(width: size.width * 0.05),
            Expanded(
              child: CustomButton(
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
                customButtonWidth: MediaQuery.of(context).size.width,
                customPaddingVertical: 20,
                topLeftRadius: 50,
                topRightRadius: 50,
                bottomLeftRadius: 50,
                bottomRightRadius: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
