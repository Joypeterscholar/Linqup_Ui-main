import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/discover/ui/interest_wrapper.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class DiscoverInterest extends StatefulWidget {
  const DiscoverInterest({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiscoverInterestState();
  }
}

class _DiscoverInterestState extends State<DiscoverInterest> {
  bool showAll = false;

  void toggleAllInterest() {
    setState(() {
      showAll = !showAll;
    });
  }

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(
              height: size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Name(
                  text: 'Interest',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                ),
                CustomButton(
                  onClick: toggleAllInterest,
                  title: 'View All',
                  titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            Gap(
              height: size.height * 0.01,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InterestWrapper(
                  showAll: showAll,
                ),
                Gap(
                  height: size.height * 0.02,
                ),
                if (showAll)
                  CustomButton(
                    onClick: () {},
                    title: 'Get on the Roll!',
                    titleStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                    bgColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    customPaddingHorizontal: 90.0,
                    customPaddingVertical: 15.0,
                    customButtonWidth: size.width,
                    bottomLeftRadius: 20,
                    bottomRightRadius: 20,
                    topLeftRadius: 20,
                    topRightRadius: 20,
                  ),
              ],
            ),
            Gap(
              height: size.height * 0.01,
            ),
            const Name(
              text: 'Around me',
            ),
            const Name(
              text: 'People with Music interest around you',
            ),
            Gap(
              height: size.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
