import 'package:flutter/material.dart';
import '../../../widget/gap/gap.dart';
import '../../../widget/text/name.dart';

class ProfilePersonalInfo extends StatelessWidget {
  const ProfilePersonalInfo({super.key});

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Gap(
          height: size.height * 0.01,
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
              width: size.width * 0.1,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.female),
                Name(text: 'Femail'),
              ],
            ),
            Gap(
              width: size.width * 0.1,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.height),
                Name(text: "5'3"),
              ],
            ),
            Gap(
              width: size.width * 0.1,
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
          height: size.height * 0.01,
        ),
      ],
    );
  }
}
