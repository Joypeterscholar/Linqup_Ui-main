import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';

class CardController extends StatefulWidget {
  const CardController({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CardControllerState();
  }
}

class _CardControllerState extends State<CardController> {
  var isLiked = false;

  void liked() {
    setState(() {
      isLiked = true;
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              'assets/png/rectangle_controller.png',
            ),
          ),
          const Gap(width: 10),
          Padding(
            padding:
                const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  onClick: liked,
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.thumb_up,
                  iconColor: isLiked
                      ? Colors.lightBlue
                      : Theme.of(context).colorScheme.onPrimary,
                  bgColor: isLiked
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(0.5),
                ),
                const Gap(
                  height: 10,
                ),
                CustomButton(
                  onClick: () {},
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.message,
                  iconColor: Colors.white,
                  bgColor: Colors.white.withOpacity(0.5),
                ),
                const Gap(
                  height: 10,
                ),
                CustomButton(
                  onClick: () {},
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.more_horiz,
                  iconColor: Colors.white,
                  bgColor: Colors.white.withOpacity(0.5),
                ),
                const Gap(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
