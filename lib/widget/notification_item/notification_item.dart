import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    required this.onTap,
    required this.notificationTitle,
    required this.notificationMessage,
    required this.isRead,
    super.key,
  });

  final bool isRead;
  final Function() onTap;
  final String notificationTitle;
  final String notificationMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: Theme.of(context).colorScheme.outlineVariant, width: 1.0),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          isRead
              ? Icons.mark_email_read_outlined
              : Icons.mark_email_unread_outlined,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
        title: Name(
          text: notificationTitle,
          maxLines: 2,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Name(
          text: notificationMessage,
          maxLines: 1,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        trailing: Text(
          '${DateTime.now().month}/${DateTime.now().year}',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
    );
  }
}
