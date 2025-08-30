import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class WalletItemWrapper extends StatelessWidget {
  const WalletItemWrapper({
    required this.title,
    this.onTap,
    this.content,
    this.isAddContainerVisible,
    super.key,
  });

  final String title;
  final Function()? onTap;
  final Widget? content;
  final bool? isAddContainerVisible;

  @override
  Widget build(context) {
    Widget addContent = const SizedBox();
    if (isAddContainerVisible == true) {
      addContent = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.add,
            size: 25,
            color: Colors.blue,
          ),
          const Gap(
            width: 5,
          ),
          CustomButton(
            onClick: onTap,
            title: 'Add Card',
            titleStyle: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
          )
        ],
      );
    }
    return Column(
      children: [
        Row(
          children: [
            Name(
              text: title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Spacer(),
            addContent
          ],
        ),
        content ?? const SizedBox(),
      ],
    );
  }
}
