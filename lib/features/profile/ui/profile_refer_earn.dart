import 'package:flutter/material.dart';

import '../../../widget/button/custom_button.dart';
import '../../../widget/gap/gap.dart';
import '../../../widget/text/name.dart';

class ProfileReferEarn extends StatelessWidget {
  const ProfileReferEarn({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Name(
            text: 'Refer and Earn!',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.bold),
          ),
          const Gap(
            height: 7,
          ),
          Name(
            text:
                'Invite your friends and earn rewards. The more you share, the more your earn.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          const Gap(height: 10),
          Container(
            width: 300,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                width: 1,
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'www.link.29348aFd2/..',
                      border: InputBorder.none,
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                    ),
                  ),
                ),
                const Spacer(),
                CustomButton(
                  onClick: () {},
                  title: 'Copy',
                  titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                  bgColor: Theme.of(context).colorScheme.onPrimaryContainer,
                  customPaddingVertical: 15,
                  customPaddingHorizontal: 15,
                  topRightRadius: 20,
                  bottomRightRadius: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
