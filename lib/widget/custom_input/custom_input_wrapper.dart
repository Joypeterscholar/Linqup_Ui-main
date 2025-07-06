import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/custom_input/custom_input.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class CustomInputWrapper extends StatelessWidget {
  final String? label;
  final String hintText;
  final IconData? iconData;
  final IconData? fileIconData;
  final IconData? cameraIconData;
  final Color? containerColor;
  final double? containerWidth;
  final Radius? topLeftRadius;
  final Radius? topRightRadius;
  final Radius? bottomLeftRadius;
  final Radius? bottomRightRadius;
  final String? leadingImage;
  final Color? containerBorderColor;
  final double? containerBorderWidth;
  final bool? enableInput;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Function()? filePickerClick;
  final Function()? captureImageClick;
  const CustomInputWrapper({
    this.label,
    required this.hintText,
    this.leadingImage,
    this.iconData,
    this.containerColor,
    this.containerWidth,
    this.cameraIconData,
    this.fileIconData,
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.topLeftRadius,
    this.topRightRadius,
    this.containerBorderColor,
    this.containerBorderWidth,
    this.enableInput,
    this.hintStyle,
    this.textStyle,
    this.filePickerClick,
    this.captureImageClick,
    super.key,
  });

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? Column(
                children: [
                  Name(
                    text: label!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(
                    height: 10,
                  ),
                ],
              )
            : const SizedBox(),
        Container(
          width: containerWidth ?? 350,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: containerColor ?? Colors.grey.withOpacity(0.1),
            border: Border.all(
              color: containerBorderColor ?? Colors.transparent,
              width: containerBorderWidth ?? 0.0,
            ),
            borderRadius: BorderRadius.only(
                topRight: topRightRadius ?? Radius.zero,
                topLeft: topLeftRadius ?? Radius.zero,
                bottomLeft: bottomLeftRadius ?? Radius.zero,
                bottomRight: bottomRightRadius ?? Radius.zero),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              leadingImage != null
                  ? Image.asset(
                      leadingImage!,
                      width: 20,
                      height: 15,
                      fit: BoxFit.cover,
                    )
                  : const SizedBox(),
              iconData != null
                  ? Icon(iconData, color: Colors.grey, size: 25)
                  : const SizedBox(),
              leadingImage != null
                  ? const Gap(
                      width: 10,
                    )
                  : const SizedBox(),
              CustomInput(
                label: hintText,
                canInputText: enableInput,
                textStyle: textStyle,
                hintStyle: hintStyle,
                isPassword: label == 'Password' ? true : false,
              ),
              fileIconData != null
                  ? InkWell(
                      onTap: filePickerClick,
                      child: Icon(fileIconData, color: Colors.grey, size: 25))
                  : const SizedBox(),
              const Gap(
                width: 10,
              ),
              cameraIconData != null
                  ? InkWell(
                      onTap: captureImageClick,
                      child: Icon(cameraIconData, color: Colors.grey, size: 25))
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
