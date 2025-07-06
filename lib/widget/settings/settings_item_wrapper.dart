import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class SettingsItemWrapper extends StatelessWidget {
  const SettingsItemWrapper({
    this.title,
    required this.content,
    this.verticalPadding,
    super.key,
  });
  final String? title;
  final Widget content;
  final double? verticalPadding;
  @override
  Widget build(context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding ?? 0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Name(
              text: title ?? '',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
            ),
          ),
          content,
        ],
      ),
    );
  }
}
