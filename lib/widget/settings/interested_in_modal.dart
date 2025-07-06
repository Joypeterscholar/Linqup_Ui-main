import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../custom_input/custom_input_wrapper.dart';
import '../gap/gap.dart';

class InterestedInModal extends StatelessWidget {
  const InterestedInModal({super.key});

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
            hintText: 'Female',
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer),
            enableInput: false,
            containerWidth: MediaQuery.of(context).size.width * 0.9,
            cameraIconData: Icons.keyboard_arrow_up_outlined,
            containerBorderColor: Theme.of(context).colorScheme.outline,
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
                Name(
                  text: 'Status',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        value: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (value) {},
                        title: Name(
                          text: 'Male',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
