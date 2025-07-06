import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name(
      {required this.text,
      this.textAlign,
      this.style,
      this.maxLines,
      super.key});

  final String text;
  final int? maxLines;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines ?? 3,
      overflow: TextOverflow.ellipsis,
      style: style ?? Theme.of(context).textTheme.bodyMedium,
    );
  }
}
