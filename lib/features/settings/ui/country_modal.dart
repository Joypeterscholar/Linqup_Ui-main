import 'package:flutter/material.dart';

import '../../../widget/custom_input/custom_input_wrapper.dart';
import '../../../widget/gap/gap.dart';
import '../../../widget/text/name.dart';

class CountryModal extends StatelessWidget {
  const CountryModal({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 15,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const Gap(
            height: 10,
          ),
          CustomInputWrapper(
            hintText: 'Select Country',
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer),
            containerWidth: MediaQuery.of(context).size.width * 0.9,
            cameraIconData: Icons.keyboard_arrow_up_outlined,
            containerBorderColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            containerBorderWidth: 1.5,
            topRightRadius: const Radius.circular(10),
            topLeftRadius: const Radius.circular(10),
            bottomRightRadius: const Radius.circular(10),
            bottomLeftRadius: const Radius.circular(10),
          ),
          const Gap(
            height: 20,
          ),
          Container(
            width: 400,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
                  blurRadius: 50,
                  spreadRadius: 1,
                  offset: Offset.fromDirection(0, 0),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CustomInputWrapper(
                    hintText: 'Nigeria',
                    hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color:
                            Theme.of(context).colorScheme.onPrimaryContainer),
                    containerWidth: MediaQuery.of(context).size.width * 0.9,
                    cameraIconData: Icons.close,
                    containerBorderColor:
                        Theme.of(context).colorScheme.onPrimaryContainer,
                    containerBorderWidth: 1.5,
                    topRightRadius: const Radius.circular(10),
                    topLeftRadius: const Radius.circular(10),
                    bottomRightRadius: const Radius.circular(10),
                    bottomLeftRadius: const Radius.circular(10),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        onTap: () {},
                        leading: const CircleAvatar(),
                        title: Name(
                          text: 'Belgium',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
