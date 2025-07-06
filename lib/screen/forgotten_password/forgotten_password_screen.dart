import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/screen/enter_password/enter_password_screen.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/make_search_friends/switch_screen.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';
import 'package:provider/provider.dart';

import '../../providers/state_manager/make_and_search_state.dart';
import '../../widget/custom_input/custom_input_wrapper.dart';

class ForgottenPasswordScreen extends StatefulWidget {
  const ForgottenPasswordScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ForgottenPasswordScreenState();
  }
}

class _ForgottenPasswordScreenState extends State<ForgottenPasswordScreen> {
  @override
  Widget build(context) {
    void screenOneHandler(toggleState) {
      toggleState.togglePage(true);
    }

    void screenTwoHandler(toggleState) {
      toggleState.togglePage(false);
    }

    final toggleState = Provider.of<MakeAndSearchStateNav>(context);
    Widget content = const CustomInputWrapper(
      iconData: Icons.email,
      hintText: 'Enter your email address',
      topLeftRadius: Radius.circular(10),
      topRightRadius: Radius.circular(10),
      bottomLeftRadius: Radius.circular(10),
      bottomRightRadius: Radius.circular(10),
    );

    if (!toggleState.isActive) {
      content = const CustomInputWrapper(
        iconData: Icons.phone,
        hintText: '+234 ___ ___ ___ 09',
        topLeftRadius: Radius.circular(10),
        topRightRadius: Radius.circular(10),
        bottomLeftRadius: Radius.circular(10),
        bottomRightRadius: Radius.circular(10),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onPrimary,
        width: double.infinity,
        child: Column(
          children: [
            Gap(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Name(
              text: 'Reset Password',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Gap(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Name(
                textAlign: TextAlign.center,
                text: 'Choose what to get your password verification code with',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
            ),
            Gap(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SwitchScreen(
              screenOne: () => screenOneHandler(toggleState),
              screenOneTitle: 'Email Reset',
              screenTwoTitle: 'TelePhone',
              screenTwo: () => screenTwoHandler(toggleState),
            ),
            Gap(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(child: content),
            Gap(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CustomButton(
              onClick: () {
                toggleState.reset = true;
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const EnterPasswordScreen(),
                  ),
                );
              },
              title: 'Send password reset link',
              titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
              customButtonWidth: MediaQuery.of(context).size.width * 0.9,
              customPaddingVertical: 20,
              bgColor: Theme.of(context).colorScheme.onPrimaryContainer,
              topLeftRadius: 50,
              topRightRadius: 50,
              bottomRightRadius: 50,
              bottomLeftRadius: 50,
            ),
            Gap(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Name(
                  textAlign: TextAlign.center,
                  text: "Didn't receive the code?",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                ),
                Gap(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Name(
                  textAlign: TextAlign.center,
                  text: 'Resend Code',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
