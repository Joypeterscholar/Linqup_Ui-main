import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({required this.plusIcon, super.key});
  final IconData plusIcon;

  @override
  Widget build(context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimary,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            plusIcon,
            color: Theme.of(context).colorScheme.onPrimary,
            size: 15,
          ),
        ));
  }
}
