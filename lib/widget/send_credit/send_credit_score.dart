import 'package:flutter/material.dart';

import '../text/name.dart';

class SendCreditScore extends StatelessWidget {
  const SendCreditScore({
    required this.amount,
    required this.color,
    this.borderWidth,
    this.amountStyle,
    super.key,
  });

  final String amount;
  final Color color;
  final double? borderWidth;
  final TextStyle? amountStyle;

  @override
  Widget build(context) {
    return Container(
      width: 100,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
            color: color,
            width: borderWidth ?? 1,
          )),
      child: Name(
        text: amount,
        style: amountStyle ??
            Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
