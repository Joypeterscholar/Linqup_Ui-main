import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/custom_input/custom_input_wrapper.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    required this.title,
    required this.searchHintTitle,
    this.content,
    super.key,
  });

  final String title;
  final String searchHintTitle;
  final Widget? content;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Name(
          text: title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
        ),
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Container(
        width: double.infinity,
        color: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CustomInputWrapper(
                hintText: searchHintTitle,
                hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                containerBorderColor:
                    Theme.of(context).colorScheme.onPrimaryContainer,
                containerBorderWidth: 1,
                containerColor: Colors.transparent,
                topRightRadius: const Radius.circular(15),
                topLeftRadius: const Radius.circular(15),
                bottomLeftRadius: const Radius.circular(15),
                bottomRightRadius: const Radius.circular(15),
              ),
            ),
            Gap(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            content ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}
