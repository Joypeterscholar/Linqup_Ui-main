import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/status_wrapper/status_card.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class MessageCard extends StatefulWidget {
  final void Function()? onTap;
  final String userImage;
  final String userName;
  final String message;
  final String time;
  final bool online;
  const MessageCard(
      {required this.userName,
      required this.message,
      required this.userImage,
      required this.time,
      required this.online,
      required this.onTap,
      super.key});

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding:
            const EdgeInsets.only(bottom: 20, top: 20, right: 10, left: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.outlineVariant,
              width: 1,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StatusCard(
              userImage: widget.userImage,
            ),
            const Gap(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Name(
                    text: widget.userName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Gap(height: 5),
                  SizedBox(
                    width: 300,
                    child: Name(
                      text: widget.message,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(width: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                widget.online
                    ? Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )
                    : const SizedBox(),
                const Gap(height: 10),
                Name(
                  text: widget.time,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.outline,
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
