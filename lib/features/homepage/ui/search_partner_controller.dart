import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';

class SearchPartnerController extends StatelessWidget {
  const SearchPartnerController({super.key});

  final cancelImage = 'assets/png/cancel.png';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                  spreadRadius: 2,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: CustomButton(
              onClick: () {},
              customPaddingHorizontal: 10.0,
              customPaddingVertical: 10.0,
              imageIcon: cancelImage,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                  spreadRadius: 2,
                ),
              ],
              color: Colors.purple,
              borderRadius: BorderRadius.circular(100),
            ),
            child: CustomButton(
              onClick: () {},
              customPaddingHorizontal: 10.0,
              customPaddingVertical: 10.0,
              iconData: Icons.star,
              iconColor: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                  spreadRadius: 2,
                ),
              ],
              color: const Color.fromARGB(160, 246, 76, 209),
              borderRadius: BorderRadius.circular(100),
            ),
            child: CustomButton(
              onClick: () {},
              customPaddingHorizontal: 10.0,
              customPaddingVertical: 10.0,
              iconData: Icons.favorite,
              iconColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
