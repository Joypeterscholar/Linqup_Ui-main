import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/png/delete.png'),
            Name(
              text: 'Are you sure you want to delete account?',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Name(
              text: 'This action is permament and could be undone.',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Gap(
              height: 30,
            ),
            CustomButton(
              onClick: () {},
              title: 'Skip',
              titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.bold),
              customButtonWidth: MediaQuery.of(context).size.width * 0.9,
              customPaddingVertical: 20,
              topRightRadius: 50,
              topLeftRadius: 50,
              bottomRightRadius: 50,
              bottomLeftRadius: 50,
              borderWidth: 1,
              borderColor: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            const Gap(
              height: 20,
            ),
            CustomButton(
              onClick: () {},
              title: 'Delete Account',
              titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold),
              customButtonWidth: MediaQuery.of(context).size.width * 0.9,
              customPaddingVertical: 20,
              topRightRadius: 50,
              topLeftRadius: 50,
              bottomRightRadius: 50,
              bottomLeftRadius: 50,
              bgColor: Theme.of(context).colorScheme.error,
            ),
          ],
        ),
      ),
    );
  }
}
