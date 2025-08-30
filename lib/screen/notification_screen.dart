import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/notification/ui/notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onPrimary,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              NotificationItem(
                  onTap: () {},
                  notificationTitle:
                      'Exploring Indiana in the midst of whatever kinikini',
                  notificationMessage:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  isRead: false),
              NotificationItem(
                  onTap: () {},
                  notificationTitle:
                      'Exploring Indiana in the midst of whatever kinikini',
                  notificationMessage:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  isRead: true),
              NotificationItem(
                  onTap: () {},
                  notificationTitle:
                      'Exploring Indiana in the midst of whatever kinikini',
                  notificationMessage:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  isRead: true),
              NotificationItem(
                  onTap: () {},
                  notificationTitle:
                      'Exploring Indiana in the midst of whatever kinikini',
                  notificationMessage:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  isRead: false)
            ],
          ),
        ),
      ),
    );
  }
}
