import 'dart:io';

import 'package:flutter/material.dart';

class DismissImage extends StatefulWidget {
  DismissImage({required this.image, super.key});

  File? image;

  @override
  State<StatefulWidget> createState() {
    return _DismissImageState();
  }
}

class _DismissImageState extends State<DismissImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: widget.image != null
              ? Image.file(
                  widget.image!,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                )
              : const SizedBox(),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  widget.image = null;
                });
              },
              icon: const Icon(Icons.close),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        )
      ],
    );
  }
}
