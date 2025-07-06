import 'package:flutter/material.dart';

import '../gap/gap.dart';
import '../text/name.dart';

class ProfilePersonalInfo extends StatelessWidget {
  const ProfilePersonalInfo({super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        Gap(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.cake_outlined),
                Name(text: '24'),
              ],
            ),
            Gap(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.female),
                Name(text: 'Femail'),
              ],
            ),
            Gap(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.height),
                Name(text: "5'3"),
              ],
            ),
            Gap(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.gesture_outlined),
                Name(text: 'Spiritual'),
              ],
            ),
          ],
        ),
        Gap(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
      ],
    );
  }
}
