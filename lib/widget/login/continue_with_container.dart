import 'package:flutter/material.dart';

import '../gap/gap.dart';
import '../text/name.dart';

class ContinueWithContainer extends StatelessWidget {
  const ContinueWithContainer({super.key});

  @override
  Widget build(context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 95,
          height: 1,
          color: Theme.of(context).colorScheme.outline,
        ),
        const Gap(
          width: 10,
        ),
        Name(
          text: "Or continue with",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).colorScheme.outline),
        ),
        const Gap(
          width: 10,
        ),
        Container(
          width: 95,
          height: 1,
          color: Theme.of(context).colorScheme.outline,
        ),
      ],
    );
  }
}
