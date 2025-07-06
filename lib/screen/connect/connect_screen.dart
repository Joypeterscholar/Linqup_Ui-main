import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/data/data.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/new_connection/new_connection_item.dart';

import '../../widget/text/name.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({super.key});

  @override
  State<ConnectScreen> createState() {
    return _ConnectScreenState();
  }
}

class _ConnectScreenState extends State<ConnectScreen> {
  var isMore = false;

  void onSeeMore() {
    setState(() {
      isMore = !isMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Theme.of(context)
              .colorScheme
              .onPrimaryContainer, // Change icon color
        ),
        title: Text(
          'Connect Request',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: isMore ? users.length : 3,
                  itemBuilder: (ctx, index) {
                    final user = users[index];
                    return NewConnectionItem(
                        userName: '${user.firstName} ${user.lastName}',
                        profile: user.profilePictureUrl,
                        status: 'Wants to connect',
                        accept: 'Accept',
                        cancel: 'Ignore');
                  },
                ),
                const Gap(
                  height: 10,
                ),
                Center(
                  child: CustomButton(
                    onClick: onSeeMore,
                    title: 'See More',
                    titleStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                            color: Theme.of(context).colorScheme.outline,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                  ),
                ),
                const Gap(
                  height: 10,
                ),
              ],
            ),
            Container(
              color: Theme.of(context).colorScheme.onPrimary,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Center(
                      child: Name(
                        text: 'Connections',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                            ),
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: users.length,
                    itemBuilder: (ctx, index) {
                      final user = users[index];
                      return NewConnectionItem(
                          userName: '${user.firstName} ${user.lastName}',
                          profile: user.profilePictureUrl,
                          status: 'Friend',
                          accept: 'Message',
                          cancel: 'Disconnect');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
