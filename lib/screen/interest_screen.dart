import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/screen/notification_screen.dart';
import 'package:linqup_mobile_application/widget/card/card_button.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../data/data.dart';
import '../widget/button/custom_button.dart';
import '../widget/gap/gap.dart';

const logo = 'assets/png/linqup_logo.png';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() {
    return _InterestScreenState();
  }
}

class _InterestScreenState extends State<InterestScreen> {
  void selectedButton(index) {
    setState(() {
      buttonList[index].isSelected = !buttonList[index].isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          logo,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CustomButton(
              onClick: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const NotificationScreen(),
                  ),
                );
              },
              customPaddingHorizontal: 10.0,
              customPaddingVertical: 10.0,
              customBorderRadius: 100,
              iconData: Icons.notifications_none_rounded,
              iconColor: Theme.of(context).colorScheme.primary,
              borderColor: Theme.of(context).colorScheme.inversePrimary,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Name(
              text: 'Interest',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.bold),
            ),
            Name(
              text: 'Select at least one',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
            ),
            Gap(
              height: size.height * 0.03,
            ),
            Wrap(
              spacing: 20.0,
              runSpacing: 10.0,
              children: List.generate(
                buttonList.length,
                (index) {
                  final button = buttonList[index];
                  return CardButton(
                    cardButtonText: button.name,
                    cardButtonImage: button.icon,
                    borderColor:
                        Theme.of(context).colorScheme.onPrimaryContainer,
                    backgroundColor: button.isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    cardButtonTextStyle: button.isSelected
                        ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            )
                        : Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                    customPaddingHorizontal: 10.0,
                    customPaddingVertical: 8.0,
                    onTap: () => selectedButton(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
        child: CustomButton(
          onClick: () {
            Navigator.pushNamed(context, '/homepage');
          },
          title: 'Get on the Roll!',
          titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
          bgColor: Theme.of(context).colorScheme.onPrimaryContainer,
          customPaddingVertical: 20,
          customButtonWidth: size.width * 0.9,
          topLeftRadius: 50,
          topRightRadius: 50,
          bottomLeftRadius: 50,
          bottomRightRadius: 50,
        ),
      ),
    );
  }
}
