import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';

import '../../../widget/text/name.dart';

class PaymentCardItem extends StatelessWidget {
  const PaymentCardItem({
    required this.image,
    required this.name,
    required this.number,
    this.isPrimary,
    super.key,
  });

  final String image;
  final bool? isPrimary;
  final String name;
  final String number;

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.4),
        ),
      )),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Name(
                      text: name,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Gap(
                      width: 10,
                    ),
                    isPrimary!
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 8),
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer
                                    .withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5)),
                            child: Name(
                              text: 'Primary',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
                Name(
                  text: number,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}
