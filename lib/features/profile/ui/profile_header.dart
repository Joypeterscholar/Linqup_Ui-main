import 'package:flutter/material.dart';

import '../../../widget/gap/gap.dart';
import '../../../widget/text/name.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    required this.name,
    this.iconData,
    this.location,
    this.changeName,
    super.key,
  });
  final String name;
  final IconData? iconData;
  final String? location;
  final String? changeName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Name(
              text: name,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Gap(
              width: 5,
            ),
            const Icon(
              Icons.verified_sharp,
              size: 20,
              color: Colors.blue,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            location != null && iconData != null
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        iconData,
                        size: 20,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      const Gap(
                        width: 10,
                      ),
                      Name(
                        text: location ?? '',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  )
                : const SizedBox(),
            changeName != null
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Name(
                        text: changeName ?? '',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      const Gap(
                        width: 5,
                      ),
                      const Icon(
                        Icons.edit,
                        size: 20,
                      )
                    ],
                  )
                : const SizedBox(),
          ],
        )
      ],
    );
  }
}
