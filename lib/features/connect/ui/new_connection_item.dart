import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';

import '../../../widget/text/name.dart';

class NewConnectionItem extends StatelessWidget {
  const NewConnectionItem({
    super.key,
    required this.userName,
    required this.profile,
    required this.status,
    required this.accept,
    required this.cancel,
  });

  final String userName;
  final String profile;
  final String status;
  final String cancel;
  final String accept;

  @override
  Widget build(context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        child: ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundImage: AssetImage(profile),
            radius: 30,
          ),
          title: Name(
            text: userName,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
          ),
          subtitle: Name(
            text: status,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomButton(
                onClick: () {},
                title: cancel,
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                      fontWeight: FontWeight.w500,
                    ),
                borderColor: Theme.of(context).colorScheme.outline,
                customPaddingVertical: 5,
                customPaddingHorizontal: 12,
                borderWidth: 1.5,
                topLeftRadius: 7,
                topRightRadius: 7,
                bottomLeftRadius: 7,
                bottomRightRadius: 7,
                bgColor: Theme.of(context).colorScheme.onPrimary,
              ),
              const Gap(
                width: 8,
              ),
              CustomButton(
                onClick: () {},
                title: accept,
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.w500,
                    ),
                borderColor: Theme.of(context).colorScheme.onPrimaryContainer,
                customPaddingVertical: 5,
                customPaddingHorizontal: 12,
                borderWidth: 1.5,
                topLeftRadius: 7,
                topRightRadius: 7,
                bottomLeftRadius: 7,
                bottomRightRadius: 7,
              ),
            ],
          ),
        ));
  }
}
