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
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(
              height: size.height * 0.02,
            ),
            Image.asset(
              image,
              height: size.height * 0.4,
              width: size.width * 0.95,
              fit: BoxFit.cover,
            ),
            Gap(
              height: size.height * 0.02,
            ),
            Name(
              text: label,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w900, fontSize: 30),
            ),
            Gap(
              height: size.height * 0.02,
            ),
            if (subContent != null && subContent!.isNotEmpty)
              SizedBox(
                width: size.width * 0.9,
                child: Text(
                  subContent!,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            Gap(
              height: size.height * 0.05,
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
                customButtonWidth: size.width * 0.9,
                topLeftRadius: 30,
                topRightRadius: 30,
                bottomLeftRadius: 30,
                bottomRightRadius: 30,
              ),
            ),
            Gap(
              height: size.height * 0.03,
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
                  borderWidth: 1.0,
                  customPaddingHorizontal: 80,
                  customPaddingVertical: 20,
                  customButtonWidth: size.width * 0.9,
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
