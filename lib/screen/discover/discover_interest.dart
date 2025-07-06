import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/screen/discover/interest_wrapper.dart';
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
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(
              height: 10,
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
            const Gap(
              height: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InterestWrapper(
                  showAll: showAll,
                ),
                const Gap(
                  height: 20,
                ),
                if (showAll)
                  CustomButton(
                    onClick: () {},
                    title: 'Get on the Roll!',
                    bgColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    customPaddingHorizontal: 90.0,
                    customPaddingVertical: 10.0,
                    bottomLeftRadius: 20,
                    bottomRightRadius: 20,
                    topLeftRadius: 20,
                    topRightRadius: 20,
                  ),
              ],
            ),
            const Gap(
              height: 8,
            ),
            const Name(
              text: 'Around me',
            ),
            const Name(
              text: 'People with Music interest around you',
            ),
            const Gap(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
