import 'package:flutter/material.dart';

import '../gap/gap.dart';

class ProfileGallery extends StatelessWidget {
  const ProfileGallery({super.key});

  @override
  Widget build(context) {
    return Row(
      children: [
        Image.asset(
          'assets/jpg/profile.jpeg',
          height: 300,
          width: 200,
          fit: BoxFit.cover,
        ),
        const Gap(
          width: 10,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/jpg/women1.jpg',
                width: 200,
                height: 145,
                fit: BoxFit.cover,
              ),
              const Gap(
                height: 10,
              ),
              Image.asset(
                'assets/jpg/women2.jpg',
                width: 200,
                height: 145,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
