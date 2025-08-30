import 'package:flutter/material.dart';

import '../../../widget/gap/gap.dart';

class ProfileGallery extends StatelessWidget {
  const ProfileGallery({super.key});

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Image.asset(
          'assets/jpg/profile.jpeg',
          height: size.height * 0.5,
          width: size.width * 0.5,
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
                width: size.width * 0.45,
                height: size.height * 0.25,
                fit: BoxFit.cover,
              ),
              const Gap(
                height: 10,
              ),
              Image.asset(
                'assets/jpg/women2.jpg',
                width: size.width * 0.45,
                height: size.height * 0.25,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
