import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/comment/comment_item.dart';
import 'package:linqup_mobile_application/widget/comment/sub_comment.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';

class CommentWrapper extends StatelessWidget {
  const CommentWrapper({super.key});

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const CommentItem(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                Gap(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const SubCommentItem(),
                Gap(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
              ],
            ),
          ),
          const CommentItem(),
        ],
      ),
    );
  }
}
