import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/discover/ui/discover_item.dart';

class MakeFriendsPageContent extends StatelessWidget {
  const MakeFriendsPageContent({super.key});

  @override
  Widget build(context) {
    return const Padding(
      padding: EdgeInsets.only(top: 5, bottom: 10, left: 16, right: 16),
      child: Center(
        child: DiscoverItem(),
      ),
    );
  }
}
