import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class BlockUserScreen extends StatelessWidget {
  const BlockUserScreen({super.key});

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Image.asset('assets/png/delete.png'),
              Name(
                text: 'Blocking this user will prevent further interaction.',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Name(
                text: 'You can unblock them anytime in your settings.',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Gap(
                height: size.height * 0.03,
              ),
              CustomButton(
                onClick: () {},
                title: 'Exit',
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold),
                customButtonWidth: MediaQuery.of(context).size.width,
                customPaddingVertical: 20,
                topRightRadius: 50,
                topLeftRadius: 50,
                bottomRightRadius: 50,
                bottomLeftRadius: 50,
                borderWidth: 1,
                borderColor: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              Gap(
                height: size.height * 0.02,
              ),
              CustomButton(
                onClick: () {},
                title: 'Block User',
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold),
                customButtonWidth: MediaQuery.of(context).size.width,
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
      ),
    );
  }
}
