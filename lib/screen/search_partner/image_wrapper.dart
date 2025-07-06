import 'package:flutter/material.dart';

class ImageWrapper extends StatelessWidget {
  const ImageWrapper({required this.image, super.key});

  final String image;

  @override
  Widget build(context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 400,
              // height: 400,
            ),
          ),
        ),
      ],
    );
  }
}
