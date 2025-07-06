import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/wrapper/wrapper_container.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(context) {
    return WrapperContainer(
      header: AppBar(
        title: const Text('Add Page'),
      ),
      // Header(showLeading: false),
      child: const Text('Add Page'),
    );
  }
}
