import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/model/message/message.dart';

import '../gap/gap.dart';
import '../text/name.dart';

class ReceiverChatItem extends StatelessWidget {
  const ReceiverChatItem({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Chat Bubble and Timestamp
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Chat Bubble
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Name(
                        text: message.receiverMessage,
                        maxLines: 10,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                            ),
                      ),

                      Gap(height: MediaQuery.of(context).size.height * 0.001),

                      // Timestamp and Checks
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Name(
                            text: message.timestamp,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                          ),
                          Gap(width: MediaQuery.of(context).size.width * 0.01),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.08,
                            height: 15,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Theme.of(context).colorScheme.outline,
                                ),
                                Transform.translate(
                                  offset: const Offset(-5, 0),
                                  child: Icon(
                                    Icons.check,
                                    size: 14,
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(width: MediaQuery.of(context).size.width * 0.03),

          // Sender Image
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(message.receiverImage),
          ),
        ],
      ),
    );
  }
}
