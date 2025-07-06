import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/data/data.dart';
import 'package:linqup_mobile_application/widget/status_wrapper/status_card.dart';

import '../../model/status/status.dart';

class StatusWrapper extends StatelessWidget {
  const StatusWrapper({super.key});
  @override
  Widget build(context) {
    List<Status> sortedStatusList = [
      ...statusList.where((item) => item.isViewed == false),
      ...statusList.where((item) => item.isViewed == true),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: StatusCard(
              name: 'My Story',
              plusIcon: Icons.add,
              userImage: user1.profilePictureUrl,
            ),
          ),
          ...sortedStatusList.map(
            (status) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: StatusCard(
                userImage: status.image,
                name: status.name,
                borderColor: status.isViewed
                    ? Theme.of(context).colorScheme.outline.withOpacity(0.2)
                    : Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
