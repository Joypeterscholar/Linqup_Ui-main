import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/features/send_credit/ui/send_credit_score.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../data/data.dart';
import '../features/message/ui/message_card.dart';

class SendCreditScreen extends StatelessWidget {
  const SendCreditScreen({super.key});

  void _bottomModal(context) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Name(
                    text: 'Select a match to send credits',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (ctx, index) {
                    final message = messages[index];
                    return MessageCard(
                      userName: message.userName,
                      message: message.senderMessage,
                      userImage: message.senderImage,
                      time: message.timestamp,
                      online: message.isRead,
                      onTap: () {},
                    );
                  },
                ),
              ),
              const Gap(
                height: 30,
              ),
               CustomButton(
                  onClick: () {},
                  title: 'Send Credit',
                  customButtonWidth: MediaQuery.of(context).size.width,
                  customPaddingVertical: 20,
                 customPaddingHorizontal: 20,
                  titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                  topRightRadius: 20,
                  topLeftRadius: 20,
                  bottomRightRadius: 20,
                  bottomLeftRadius: 20,
                  bgColor: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Name(
          text: 'Send Credits',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Theme.of(context).colorScheme.onPrimary,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Name(
              text: 'Choose amount to send',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Gap(
              height: size.height * 0.01,
            ),
            Center(
              child: Wrap(
                runSpacing: 15,
                spacing: 15,
                children: [
                  SendCreditScore(
                    amount: '${5}LQ',
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  SendCreditScore(
                    amount: '${10}LQ',
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  SendCreditScore(
                    amount: '${20}LQ',
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  SendCreditScore(
                    amount: '${50}LQ',
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  SendCreditScore(
                    amount: '${100}LQ',
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  SendCreditScore(
                    amount: '${200}LQ',
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ],
              ),
            ),
            Gap(
              height: size.height * 0.05,
            ),
            Center(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 25),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.send,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    Gap(
                      width: size.width * 0.01,
                    ),
                    CustomButton(
                      onClick: () => _bottomModal(context),
                      title: 'Send Credit',
                      titleStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
