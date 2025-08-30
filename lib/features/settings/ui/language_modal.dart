import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/settings/ui/settings_item.dart';
import 'package:linqup_mobile_application/features/settings/ui/settings_item_wrapper.dart';

import '../../../widget/gap/gap.dart';

class LanguageModal extends StatelessWidget {
  const LanguageModal({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const Gap(
            height: 10,
          ),
          const SettingsItemWrapper(
            title: 'Select Language',
            content: SettingsItem(
              title: 'English',
              content: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
