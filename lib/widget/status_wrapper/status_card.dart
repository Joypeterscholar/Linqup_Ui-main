import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/plus_button.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class StatusCard extends StatelessWidget {
  const StatusCard(
      {required this.userImage,
      this.name,
      this.borderColor,
      this.plusIcon,
      super.key});

  final String? name;
  final Color? borderColor;
  final String userImage;
  final IconData? plusIcon;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: borderColor ?? Colors.transparent,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(100)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  userImage,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (plusIcon != null)
              Positioned(
                top: 45,
                left: 30,
                child: PlusButton(plusIcon: plusIcon!),
              )
          ],
        ),
        if (name != null && name!.isNotEmpty)
          Name(
            text: name!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          )
      ],
    );
  }
}
