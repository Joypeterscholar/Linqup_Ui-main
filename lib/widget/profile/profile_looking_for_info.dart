import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/profile/profile_content_wrapper.dart';

class ProfileLookingForInfo extends StatelessWidget {
  const ProfileLookingForInfo({super.key});

  @override
  Widget build(context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: ProfileContentWrapper(
        title: "I'm Looking for",
        subTitle:
            'Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet.',
      ),
    );
  }
}
