import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linqup_mobile_application/widget/chat/dismiss_image.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';

import '../custom_input/custom_input_wrapper.dart';

class CustomMessageInput extends StatefulWidget {
  const CustomMessageInput({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CustomMessageInputState();
  }
}

class _CustomMessageInputState extends State<CustomMessageInput> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _takePicture() async {
    final picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      setState(() {
        _image = File(photo.path);
      });
    }
  }

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _image != null ? DismissImage(image: _image) : const SizedBox(),
                const Gap(
                  width: 20,
                ),
                // _image != null ? DismissImage(image: _image) : const SizedBox(),
              ],
            ),
          ),
          const Gap(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: CustomInputWrapper(
                  hintText: 'Message..',
                  textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                  iconData: Icons.emoji_emotions_outlined,
                  containerColor: Theme.of(context).colorScheme.onPrimary,
                  containerWidth: MediaQuery.of(context).size.width * 0.75,
                  cameraIconData: Icons.camera_alt_outlined,
                  captureImageClick: _takePicture,
                  fileIconData: Icons.attach_file_outlined,
                  filePickerClick: _pickImage,
                  topLeftRadius: const Radius.circular(50),
                  topRightRadius: const Radius.circular(50),
                  bottomLeftRadius: const Radius.circular(50),
                  bottomRightRadius: const Radius.circular(50),
                ),
              ),
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10)),
                icon: Icon(Icons.send_outlined,
                    size: 30, color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
