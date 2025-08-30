import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/card/card_content.dart';
import 'package:linqup_mobile_application/widget/card/card_controller.dart';

class MakeFriendCard extends StatefulWidget {
  final String backgroundImage;
  final String? categoryText;
  final String? categoryIcon;
  final String? description;
  final String? userImage;
  final String? userName;
  final String? userState;
  final Function()? onTap;

  const MakeFriendCard({
    required this.backgroundImage,
    this.categoryText,
    this.categoryIcon,
    this.description,
    this.userImage,
    this.userName,
    this.userState,
    this.onTap,
    super.key,
  });

  @override
  State<MakeFriendCard> createState() {
    return _MakeFriendCardState();
  }
}

class _MakeFriendCardState extends State<MakeFriendCard> {
  bool _isVisible = true;

  void toggleController() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              widget.backgroundImage,
              height: size.height * 0.45,
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: size.height * 0.45,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Positioned(
            top: size.height * 0.013,
            bottom: size.height * 0.013,
            left: size.width * 0.02,
            child: CardContent(
              cardButtonText: widget.categoryText ?? '',
              cardButtonIcon: widget.categoryIcon ?? '',
              text: widget.description ?? '',
              profilePath: widget.userImage ?? '',
              profileName: widget.userName ?? '',
              profileState: widget.userState ?? '',
            ),
          ),
          Positioned(
            top: size.height * 0.12,
            right: 0,
            child: AnimatedSlide(
              offset: _isVisible ? const Offset(0, 0) : const Offset(0.8, 0),
              duration: const Duration(milliseconds: 300),
              child: GestureDetector(
                  onTap: toggleController, child: const CardController()),
            ),
          ),
        ],
      ),
    );
  }
}
