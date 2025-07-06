import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class CardProfile extends StatefulWidget {
  final String profile;
  final String? name;
  final String? state;
  const CardProfile({required this.profile, this.name, this.state, super.key});

  @override
  State<CardProfile> createState() {
    return _CardProfile();
  }
}

class _CardProfile extends State<CardProfile> {
  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            widget.profile,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Name(
              text: widget.name!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Name(
              text: widget.state!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
