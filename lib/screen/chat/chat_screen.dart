import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:linqup_mobile_application/model/message/message.dart';
import 'package:linqup_mobile_application/widget/chat/sender_chat_item.dart';
import 'package:linqup_mobile_application/widget/custom_message_input/custom_message_input.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../../widget/chat/receiver_chat_item.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.message});

  final Message message;

  @override
  Widget build(context) {
    String dayName = DateFormat('EEE').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary, // Change icon color
        ),
        title: Text(
          'Messages',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0), // Height of the border
          child: Container(
            color: Colors.grey.shade300, // Border color
            height: 1.0,
          ),
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Name(
                        text:
                            '$dayName, ${DateTime.now().year} ${DateTime.now().hour} : ${DateTime.now().minute}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                    ),
                    Gap(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SenderChatItem(message: message),
                    Gap(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    ReceiverChatItem(message: message),
                    Gap(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                  ],
                ),
              ),
            ),
            // const Spacer(),
            const CustomMessageInput(),
          ],
        ),
      ),
    );
  }
}
