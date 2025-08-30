import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/custom_input/custom_input_wrapper.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/features/post/ui/post_popup_menu.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../widget/button/custom_button.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PostScreenState();
  }
}

class _PostScreenState extends State<PostScreen> {
  List<String> buttonList = ['Profile', 'Settings', 'Logout'];
  var selectedItem = 'Profile';

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        actions: [
          CustomButton(
            onClick: () {
              showDialog(
                context: context,
                builder: (context) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: SimpleDialog(
                    backgroundColor: Colors.transparent,
                    alignment: Alignment.topRight,
                    insetPadding: EdgeInsets.zero,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 25,
                        ),
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(blurRadius: 8, color: Colors.black26)
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Icon(Icons.close),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {},
                                child: const Name(text: 'Publish Post'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {},
                                child: const Name(text: 'Save as Drafts'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () {},
                                child: const Name(text: 'My Posts'),
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            customPaddingHorizontal: 10.0,
            customPaddingVertical: 10.0,
            customBorderRadius: 100,
            imageIcon: 'assets/png/switch.png',
            iconColor: Theme.of(context).colorScheme.primary,
            borderColor: Theme.of(context).colorScheme.inversePrimary,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Theme.of(context).colorScheme.onPrimary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  CustomInputWrapper(
                    hintText: "What's on your mind?",
                    topRightRadius: const Radius.circular(50),
                    topLeftRadius: const Radius.circular(50),
                    bottomRightRadius: const Radius.circular(50),
                    bottomLeftRadius: const Radius.circular(50),
                    containerWidth: MediaQuery.of(context).size.width * 0.8,
                  ),
                  const Spacer(),
                  InkWell(onTap: () {}, child: const Icon(Icons.send))
                ],
              ),
            ),
            Gap(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.emoji_emotions_outlined),
                    Gap(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    const Icon(Icons.attach_file),
                    Gap(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    PostpopUpMenu(
                        horizontalPadding: 10,
                        verticalPadding: 10,
                        selectedItem: selectedItem,
                        buttonList: buttonList),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
