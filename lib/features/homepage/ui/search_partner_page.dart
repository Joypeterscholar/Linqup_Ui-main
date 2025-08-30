import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/features/homepage/ui/partner_card.dart';
import 'package:linqup_mobile_application/features/homepage/ui/search_partner_controller.dart';

class SearchPartnerPage extends StatelessWidget {
  const SearchPartnerPage({super.key});

  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          bottom: 90,
          left: 10.0,
          right: 10.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.outlineVariant,
                blurRadius: 10,
                offset: const Offset(0, 0),
                spreadRadius: 2,
              ),
            ],
          ),
          child: const Column(
            children: [
              PartnerCard(),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0, top: 15.0),
                child: SearchPartnerController(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
