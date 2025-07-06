import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class MatchesCardWrapper extends StatelessWidget {
  const MatchesCardWrapper(
      {required this.child,
      required this.title,
      required this.coloredTitle,
      super.key});

  final Widget child;
  final String title;
  final String coloredTitle;

  @override
  Widget build(context) {
    return Column(
      children: [
        child,
        const Gap(
          height: 5,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Name(
              text: title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Gap(
              width: 5,
            ),
            Name(
              text: coloredTitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
