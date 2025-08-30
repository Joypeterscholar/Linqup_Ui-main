import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/screen/forgotten_password_screen.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/custom_input/custom_input_wrapper.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../widget/continue_with/continue_with_container.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            children: [
              Gap(
                height: size.height * 0.02,
              ),
              Name(
                text: 'Login',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w900, fontSize: 30),
              ),
              Gap(height: size.height * 0.02),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Name(
                    text: "Don't have account?",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  const Gap(width: 5),
                  CustomButton(
                    onClick: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    title: 'Sign Up Here',
                    titleStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Gap(height: size.height * 0.05),
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
                height: size.height * 0.03,
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
                height: size.height * 0.04,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CustomButton(
                  onClick: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const ForgottenPasswordScreen(),
                      ),
                    );
                  },
                  title: 'Forgot Password?',
                  titleStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer),
                ),
              ),
              Gap(
                height: size.height * 0.04,
              ),
              CustomButton(
                onClick: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                title: 'Login',
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary),
                bgColor: Theme.of(context).colorScheme.onPrimaryContainer,
                customButtonWidth: size.width,
                customPaddingVertical: 20,
                topLeftRadius: 25,
                topRightRadius: 25,
                bottomLeftRadius: 25,
                bottomRightRadius: 25,
              ),
              Gap(
                height: size.height * 0.04,
              ),
              const ContinueWithContainer(text: "Or continue with"),
              Gap(
                height:  size.height * 0.04,
              ),
              CustomButton(
                onClick: () {},
                title: 'Continue with Google',
                bgColor: Theme.of(context).colorScheme.onSecondary,
                borderColor: Theme.of(context).colorScheme.primary,
                borderWidth: 1.5,
                customButtonWidth: size.width,
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
                customButtonWidth: size.width,
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
