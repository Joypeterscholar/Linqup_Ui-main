import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class ProfileContentWrapper extends StatelessWidget {
  const ProfileContentWrapper({
    required this.title,
    this.subTitle,
    this.content,
    super.key,
  });
  final String title;
  final String? subTitle;
  final Widget? content;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Theme.of(context).colorScheme.onPrimary,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Name(
                    text: title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  ),
                  const Gap(
                    width: 10,
                  ),
                  const Icon(
                    Icons.edit,
                    size: 20,
                  ),
                ],
              ),
              Name(
                maxLines: 100,
                text: subTitle ?? '',
              ),
              content ?? const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
