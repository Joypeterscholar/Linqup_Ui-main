import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/profile/ui/profile_content_wrapper.dart';

class ProfileOccupationInfo extends StatelessWidget {
  const ProfileOccupationInfo({super.key});

  @override
  Widget build(context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: ProfileContentWrapper(
        title: 'Occupation',
        subTitle: 'Lorem ipsum.',
      ),
    );
  }
}
