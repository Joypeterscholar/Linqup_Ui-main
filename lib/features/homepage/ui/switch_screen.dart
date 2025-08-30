import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/providers/state_manager/make_and_search_state.dart';
import 'package:linqup_mobile_application/features/homepage/ui/switch_screen_button.dart';
import 'package:provider/provider.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen(
      {required this.screenOne,
      required this.screenOneTitle,
      required this.screenTwoTitle,
      required this.screenTwo,
      super.key});

  final void Function() screenOne;
  final String screenOneTitle;
  final void Function() screenTwo;
  final String screenTwoTitle;
  @override
  Widget build(context) {
    final toggleState = Provider.of<MakeAndSearchStateNav>(context);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        height: size.height * 0.07,
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        decoration: BoxDecoration(
            color:
                Theme.of(context).colorScheme.inversePrimary.withOpacity(0.4),
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(20),
              right: Radius.circular(20),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SwitchScreenButton(
              title: screenOneTitle,
              bgColor: toggleState.isActive
                  ? Theme.of(context).colorScheme.onPrimary
                  : Colors.transparent,
              toggleHandler: screenOne,
            ),
            SwitchScreenButton(
              title: screenTwoTitle,
              bgColor: !toggleState.isActive
                  ? Theme.of(context).colorScheme.onPrimary
                  : Colors.transparent,
              toggleHandler: screenTwo,
            ),
          ],
        ),
      ),
    );
  }
}
