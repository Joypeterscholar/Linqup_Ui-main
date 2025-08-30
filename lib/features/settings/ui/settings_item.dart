import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    required this.title,
    this.content,
    this.leadingIconData,
    this.bottomContent,
    super.key,
  });
  final String title;
  final Widget? content;
  final IconData? leadingIconData;
  final Widget? bottomContent;

  @override
  Widget build(context) {
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              leadingIconData != null
                  ? Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        leadingIconData,
                        size: 20,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    )
                  : const SizedBox(),
              leadingIconData != null
                  ? const Gap(
                      width: 5,
                    )
                  : const SizedBox(),
              Name(text: title, style: Theme.of(context).textTheme.bodyMedium),
              const Spacer(),
              content ?? const SizedBox(),
            ],
          ),
          bottomContent != null
              ? const Gap(
                  height: 10,
                )
              : const SizedBox(),
          bottomContent ?? const SizedBox(),
        ],
      ),
    );
  }
}
