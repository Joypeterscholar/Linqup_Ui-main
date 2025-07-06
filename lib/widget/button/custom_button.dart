import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.onClick,
    this.bgColor,
    this.borderColor,
    this.bgHeight,
    this.bgWidth,
    this.imageIcon,
    this.iconData,
    this.iconColor,
    this.title,
    this.titleStyle,
    this.customPaddingHorizontal,
    this.customPaddingVertical,
    this.customBorderRadius,
    this.borderWidth,
    this.firstLayerPadding,
    this.firstLayerBorderColor,
    this.firstLayerBorderWidth,
    this.firstLayerBorderRadius,
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.topLeftRadius,
    this.topRightRadius,
    this.customButtonWidth,
    this.suffixIcon,
    super.key,
  });

  final String? imageIcon;
  final IconData? iconData;
  final Color? borderColor;
  final Color? bgColor;
  final double? bgHeight;
  final double? bgWidth;
  final void Function()? onClick;
  final Color? iconColor;
  final String? title;
  final double? customPaddingHorizontal;
  final double? customPaddingVertical;
  final double? customBorderRadius;
  final double? borderWidth;
  final double? firstLayerPadding;
  final Color? firstLayerBorderColor;
  final double? firstLayerBorderWidth;
  final double? firstLayerBorderRadius;
  final double? bottomRightRadius;
  final double? bottomLeftRadius;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? customButtonWidth;
  final TextStyle? titleStyle;
  final IconData? suffixIcon;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: firstLayerBorderColor ?? Colors.transparent,
            width: firstLayerBorderWidth ?? 0.0,
          ),
          borderRadius: BorderRadius.circular(firstLayerBorderRadius ?? 0),
        ),
        padding: EdgeInsets.all(firstLayerPadding ?? 0.0),
        child: IntrinsicWidth(
          child: Container(
              width: customButtonWidth,
              padding: EdgeInsets.symmetric(
                  horizontal: customPaddingHorizontal ?? 0.0,
                  vertical: customPaddingVertical ?? 0.0),
              decoration: BoxDecoration(
                  color: bgColor ?? Colors.transparent,
                  border: Border.all(
                    color: borderColor ?? Colors.transparent,
                    width: borderWidth ?? 0.0,
                  ),
                  borderRadius: title != null
                      ? BorderRadius.only(
                          bottomLeft: Radius.circular(bottomLeftRadius ?? 0),
                          bottomRight: Radius.circular(bottomRightRadius ?? 0),
                          topLeft: Radius.circular(topLeftRadius ?? 0),
                          topRight: Radius.circular(topRightRadius ?? 0),
                        )
                      : BorderRadius.circular(customBorderRadius ?? 0)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (imageIcon != null && imageIcon!.isNotEmpty)
                    Image.asset(
                      imageIcon!,
                      height: bgHeight,
                      width: bgWidth,
                      fit: BoxFit.cover,
                    )
                  else if (iconData != null && iconData != Icons.error)
                    Icon(
                      iconData,
                      size: bgHeight,
                      color: iconColor,
                    ),
                  if (title != null && title!.isNotEmpty)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Name(
                          text: title!,
                          style: titleStyle ??
                              Theme.of(context).textTheme.titleMedium,
                        ),
                        suffixIcon != null
                            ? const Gap(
                                width: 15,
                              )
                            : const SizedBox(),
                        suffixIcon != null
                            ? Icon(
                                suffixIcon,
                                color: Theme.of(context).colorScheme.onPrimary,
                              )
                            : const SizedBox(),
                      ],
                    ),
                ],
              )),
        ),
      ),
    );
  }
}
