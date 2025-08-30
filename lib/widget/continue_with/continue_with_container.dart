import 'package:flutter/material.dart';

import '../gap/gap.dart';
import '../text/name.dart';

class ContinueWithContainer extends StatelessWidget {
  const ContinueWithContainer({super.key, required this.text});

  final String text;
  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: size.width * 0.25,
          height: size.height * 0.001,
          color: Theme.of(context).colorScheme.outline,

        ),
        Gap(
          width: size.width * 0.02,
        ),
        Name(
          text: text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).colorScheme.outline),
        ),
        Gap(
          width: size.width * 0.02,
        ),
        Container(
          width: size.width * 0.25,
          height: size.height * 0.001,
          color: Theme.of(context).colorScheme.outline,
        ),
      ],
    );
  }
}
