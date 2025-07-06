import 'package:flutter/material.dart';

class BottomModal extends StatelessWidget {
  final Widget child;
  const BottomModal({required this.child, super.key});

  @override
  Widget build(context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: child,
      ),
    );
  }
}
