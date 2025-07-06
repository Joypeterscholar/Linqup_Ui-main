import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/navigation_menu/navigation_menu.dart';

class WrapperContainer extends StatelessWidget {
  final Widget child;
  final AppBar header;
  final double? leftPadding;
  final double? topPadding;
  final double? rightPadding;
  final double? bottomPadding;
  const WrapperContainer({
    required this.child,
    required this.header,
    this.leftPadding,
    this.bottomPadding,
    this.rightPadding,
    this.topPadding,
    super.key,
  });

  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        appBar: header,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: leftPadding ?? 0,
                right: rightPadding ?? 0,
                top: topPadding ?? 0,
                bottom: bottomPadding ?? 0,
              ),
              child: child,
            ),
            const NavigationMenu(),
          ],
        ),
      ),
    );
  }
}
