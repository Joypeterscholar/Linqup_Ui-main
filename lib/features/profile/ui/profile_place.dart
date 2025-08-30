import 'package:flutter/material.dart';

import '../../../widget/gap/gap.dart';
import '../../../widget/text/name.dart';

class ProfilePlace extends StatelessWidget {
  const ProfilePlace({super.key});

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Name(
                  text: 'Matches',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const Gap(
                  width: 5,
                ),
                Name(
                  text: '67',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                ),
              ],
            ),
            const Gap(
              width: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Name(
                  text: 'Likes',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const Gap(
                  width: 5,
                ),
                Name(
                  text: '67',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.location_on),
            Name(
              text: 'Yaba, Lagos.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const Icon(Icons.edit)
          ],
        ),
      ],
    );
  }
}
