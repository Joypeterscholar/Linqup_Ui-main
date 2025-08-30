import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/profile/ui/profile_content_wrapper.dart';

class ProfileBioInfo extends StatelessWidget {
  const ProfileBioInfo({super.key});

  @override
  Widget build(context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: ProfileContentWrapper(
        title: 'Bio',
        subTitle:
            'Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae. Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae. Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae.',
      ),
    );
  }
}
