import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class SlideContent extends StatelessWidget {
  const SlideContent(
      {required this.image,
      required this.label,
      this.subContent,
      required this.buttonText,
      this.secondButtonText,
      required this.onClick,
      this.secondOnClick,
      super.key});

  final String image;
  final String label;
  final String? subContent;
  final String buttonText;
  final String? secondButtonText;
  final void Function(BuildContext context) onClick;
  final void Function(BuildContext context)? secondOnClick;

  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(
              height: 20,
            ),
            Image.asset(
              image,
              height: 250,
              width: 350,
              fit: BoxFit.cover,
            ),
            const Gap(
              height: 20,
            ),
            Name(
              text: label,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w900, fontSize: 30),
            ),
            const Gap(height: 6),
            if (subContent != null && subContent!.isNotEmpty)
              SizedBox(
                width: 350,
                child: Text(
                  subContent!,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            const Gap(
              height: 30,
            ),
            Center(
              child: CustomButton(
                onClick: () => onClick(context),
                title: buttonText,
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontWeight: FontWeight.bold),
                bgColor: Theme.of(context).colorScheme.onPrimaryContainer,
                customPaddingHorizontal: 80,
                customPaddingVertical: 20,
                customButtonWidth: MediaQuery.of(context).size.width * 0.9,
                topLeftRadius: 30,
                topRightRadius: 30,
                bottomLeftRadius: 30,
                bottomRightRadius: 30,
              ),
            ),
            const Gap(
              height: 20,
            ),
            if (secondButtonText != null && secondButtonText!.isNotEmpty)
              Center(
                child: CustomButton(
                  onClick: () => secondOnClick!(context),
                  title: secondButtonText!,
                  titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold),
                  bgColor: Theme.of(context).colorScheme.onSecondary,
                  borderColor: Theme.of(context).colorScheme.onPrimaryContainer,
                  borderWidth: 1.5,
                  customPaddingVertical: 20,
                  customButtonWidth: MediaQuery.of(context).size.width * 0.9,
                  topLeftRadius: 30,
                  topRightRadius: 30,
                  bottomLeftRadius: 30,
                  bottomRightRadius: 30,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
