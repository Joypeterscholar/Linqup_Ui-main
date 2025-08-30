import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';

class SwitchScreenButton extends StatelessWidget {
  const SwitchScreenButton(
      {required this.title,
      required this.bgColor,
      required this.toggleHandler,
      super.key});

  final void Function() toggleHandler;
  final String title;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onClick: toggleHandler,
      bgColor: bgColor,
      customPaddingVertical: 12,
      customPaddingHorizontal: 30,
      topRightRadius: 15,
      topLeftRadius: 15,
      bottomLeftRadius: 15,
      bottomRightRadius: 15,
      customButtonWidth: MediaQuery.of(context).size.width * 0.46,
      title: title,
      titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
