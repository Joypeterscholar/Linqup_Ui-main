import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/data/data.dart';
import 'package:linqup_mobile_application/screen/chat_screen.dart';
import 'package:linqup_mobile_application/features/message/ui/message_card.dart';
import 'package:linqup_mobile_application/widget/bottom_modal/bottom_modal.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../widget/navigation_menu/navigation_menu.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  void onMessageTap(context, messages) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ChatScreen(message: messages),
      ),
    );
  }

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Name(
          text: 'Messages',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        child: Column(
          children: [
            Gap(
              height: size.height * 0.01,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Name(
                    text: 'Recent Matches',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  Gap(
                    height: size.height * 0.02,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomButton(
                          onClick: () {},
                          iconData: Icons.favorite,
                          iconColor: Theme.of(context).colorScheme.onPrimary,
                          bgColor: Theme.of(context).colorScheme.inversePrimary,
                          customPaddingHorizontal: 30,
                          customPaddingVertical: 20,
                          topLeftRadius: 10,
                          topRightRadius: 10,
                          bottomLeftRadius: 10,
                          bottomRightRadius: 10,
                          title: '32',
                          titleStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                        ),
                        Gap(
                          width: size.width * 0.05,
                        ),
                        for (var user in users) ...[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              user.profilePictureUrl,
                              height: 85,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Gap(
                            width: size.width * 0.05,
                          ),
                        ]
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BottomModal(
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
                      onTap: () => onMessageTap(ctx, message),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}
