import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/custom_input/custom_input_wrapper.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/login/continue_with_container.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Gap(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Name(
                text: 'Sign Up',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w900, fontSize: 30),
              ),
              Gap(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Name(
                    text: "Have account?",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  const Gap(width: 5),
                  CustomButton(
                    onClick: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    title: 'Login Here',
                    titleStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Gap(height: MediaQuery.of(context).size.height * 0.05),
              const CustomInputWrapper(
                label: 'Username',
                iconData: Icons.person,
                hintText: 'Type something here',
                topLeftRadius: Radius.circular(10),
                topRightRadius: Radius.circular(10),
                bottomLeftRadius: Radius.circular(10),
                bottomRightRadius: Radius.circular(10),
              ),
              Gap(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const CustomInputWrapper(
                label: 'Email',
                iconData: Icons.email,
                hintText: 'Type something here',
                topLeftRadius: Radius.circular(10),
                topRightRadius: Radius.circular(10),
                bottomLeftRadius: Radius.circular(10),
                bottomRightRadius: Radius.circular(10),
              ),
              Gap(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const CustomInputWrapper(
                label: 'Password',
                iconData: Icons.lock,
                hintText: 'Type something here',
                topLeftRadius: Radius.circular(10),
                topRightRadius: Radius.circular(10),
                bottomLeftRadius: Radius.circular(10),
                bottomRightRadius: Radius.circular(10),
              ),
              Gap(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              CustomButton(
                onClick: () {
                  Navigator.pushNamed(context, '/interest');
                },
                title: 'Sign Up',
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                bgColor: Theme.of(context).colorScheme.onPrimaryContainer,
                customButtonWidth: MediaQuery.of(context).size.width * 0.9,
                customPaddingVertical: 20,
                topLeftRadius: 25,
                topRightRadius: 25,
                bottomLeftRadius: 25,
                bottomRightRadius: 25,
              ),
              Gap(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              const ContinueWithContainer(),
              Gap(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              CustomButton(
                onClick: () {},
                title: 'Continue with Google',
                bgColor: Theme.of(context).colorScheme.onSecondary,
                borderColor: Theme.of(context).colorScheme.primary,
                borderWidth: 1.5,
                customButtonWidth: MediaQuery.of(context).size.width * 0.9,
                customPaddingVertical: 20,
                topLeftRadius: 25,
                topRightRadius: 25,
                bottomLeftRadius: 25,
                bottomRightRadius: 25,
              ),
              Gap(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomButton(
                onClick: () {},
                title: 'Continue with Apple',
                bgColor: Theme.of(context).colorScheme.onSecondary,
                borderColor: Theme.of(context).colorScheme.primary,
                borderWidth: 1.5,
                customButtonWidth: MediaQuery.of(context).size.width * 0.9,
                customPaddingVertical: 20,
                topLeftRadius: 25,
                topRightRadius: 25,
                bottomLeftRadius: 25,
                bottomRightRadius: 25,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
