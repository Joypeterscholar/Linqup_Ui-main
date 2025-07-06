import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class EnterPasswordScreen extends StatefulWidget {
  const EnterPasswordScreen({super.key});

  @override
  State<EnterPasswordScreen> createState() => _EnterPasswordScreenState();
}

class _EnterPasswordScreenState extends State<EnterPasswordScreen> {
  final int fieldCount = 4;
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;
  bool isError = false;
  final String correctCode = '1234';

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(fieldCount, (_) => FocusNode());
    _controllers = List.generate(fieldCount, (_) => TextEditingController());

    for (int i = 0; i < fieldCount; i++) {
      _focusNodes[i].addListener(() {
        setState(() {}); // Trigger UI update for focused border color
      });
    }
  }

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _handleInput(String value, int index) {
    if (value.isNotEmpty && index < fieldCount - 1) {
      _focusNodes[index + 1].requestFocus();
    }
    if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }

    // Check if all fields are filled
    if (_controllers.every((c) => c.text.isNotEmpty)) {
      String enteredCode = _controllers.map((c) => c.text).join();

      if (enteredCode == correctCode) {
        setState(() {
          isError = false;
        });
      } else {
        setState(() {
          isError = true;
        });
      }
      // You can trigger verification or submission here
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onPrimary,
        width: double.infinity,
        child: Column(
          children: [
            Gap(height: MediaQuery.of(context).size.height * 0.01),
            Name(
              text: 'Password Reset code',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Gap(height: MediaQuery.of(context).size.height * 0.05),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Name(
                textAlign: TextAlign.center,
                text:
                    'We sent 4-digit code reset code to your a*****ye@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
            ),
            Gap(height: MediaQuery.of(context).size.height * 0.05),
            isError
                ? SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Name(
                      textAlign: TextAlign.center,
                      text: 'You entered the wrong code, Try again',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  )
                : const SizedBox(),
            isError
                ? Gap(height: MediaQuery.of(context).size.height * 0.01)
                : const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var index = 0; index < fieldCount; index++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 70,
                      height: 85,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isError
                              ? Theme.of(context).colorScheme.error
                              : _focusNodes[index].hasFocus
                                  ? Colors.purple
                                  : Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        maxLength: 1,
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 30,
                            ),
                        decoration: const InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                        ),
                        onChanged: (value) => _handleInput(value, index),
                      ),
                    ),
                  ),
              ],
            ),
            Gap(height: MediaQuery.of(context).size.height * 0.05),
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
                Gap(width: MediaQuery.of(context).size.width * 0.01),
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
