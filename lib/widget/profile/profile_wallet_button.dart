import 'package:flutter/material.dart';

import '../gap/gap.dart';
import '../text/name.dart';

class ProfileWalletButton extends StatelessWidget {
  const ProfileWalletButton({super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Name(
              text: '500 LC',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Gap(
              width: 10,
            ),
            const Icon(
              Icons.account_balance_wallet_outlined,
              color: Colors.blue,
              size: 35,
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Name(
              text: 'Top up Balance',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.outline),
            ),
            const Gap(
              width: 5,
            ),
            Icon(
              Icons.arrow_upward,
              size: 20,
              color: Theme.of(context).colorScheme.outline,
            )
          ],
        )
      ],
    );
  }
}
