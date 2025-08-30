import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/data/data.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';

import '../features/connect/ui/new_connection_item.dart';
import '../widget/text/name.dart';

class ConnectsScreen extends StatefulWidget {
  const ConnectsScreen({super.key});

  @override
  State<ConnectsScreen> createState() {
    return _ConnectsScreenState();
  }
}

class _ConnectsScreenState extends State<ConnectsScreen> {
  var isMore = false;

  void onSeeMore() {
    setState(() {
      isMore = !isMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                Gap(
                  width: size.width * 0.05,
                ),
                Center(
                  child: CustomButton(
                    onClick: onSeeMore,
                    title: isMore ? 'See Less' : 'See More',
                    titleStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                            color: Theme.of(context).colorScheme.outline,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                  ),
                ),
                Gap(
                  width: size.width * 0.05,
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
