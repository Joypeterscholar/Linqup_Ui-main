import 'package:flutter/material.dart';

import '../text/name.dart';

class EarningItem extends StatelessWidget {
  const EarningItem({
    required this.title,
    required this.balance,
    super.key,
  });

  final String title;
  final String balance;

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.4),
          ),
        ),
      ),
      child: Row(
        children: [
          Name(
            text: 'Referrals',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          const Spacer(),
          Name(
            text: '200LQ',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
        ],
      ),
    );
  }
}
