import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/profile/profile_content_wrapper.dart';

import '../gap/gap.dart';
import '../text/name.dart';

class ProfileAccountInfo extends StatelessWidget {
  const ProfileAccountInfo({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: ProfileContentWrapper(
        title: 'Account Information',
        content: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Name(
                  text: 'Date Joined',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Gap(
                  height: 10,
                ),
                Name(
                  text: 'Religion',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Gap(
                  height: 10,
                ),
                Name(
                  text: 'Interested In',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Gap(
                  height: 10,
                ),
                Name(
                  text: 'Hobbies',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Gap(
                  height: 10,
                ),
                Name(
                  text: 'Education',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Name(
                  text: 'March 2024',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                ),
                const Gap(
                  height: 10,
                ),
                const Name(
                  text: 'Christainity',
                ),
                const Gap(
                  height: 10,
                ),
                const Name(
                  text: 'Men',
                ),
                const Gap(
                  height: 10,
                ),
                const Name(
                  text: 'Reading, Eating',
                ),
                const Gap(
                  height: 10,
                ),
                Name(
                  text: 'Master, Biochemistry',
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
