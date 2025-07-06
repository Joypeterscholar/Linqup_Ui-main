import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../custom_input/custom_input_wrapper.dart';
import '../gap/gap.dart';
import '../text/name.dart';

class CommentItem extends StatefulWidget {
  const CommentItem({super.key});

  @override
  State<CommentItem> createState() {
    return _CommentItemState();
  }
}

class _CommentItemState extends State<CommentItem> {
  var liked = false;
  void likeComment() {
    setState(() {
      liked = true;
    });
  }

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 27,
            backgroundImage: AssetImage(user4.profilePictureUrl),
          ),
          Gap(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Name(
                  text: 'Joy Peters - 3d',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                ),
                Gap(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Name(
                  text:
                      'Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae.',
                  maxLines: 100,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary),
                ),
                Gap(
                  height: MediaQuery.of(context).size.width * 0.01,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomInputWrapper(
                      hintText: 'Reply',
                      containerWidth: MediaQuery.of(context).size.width * 0.6,
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary),
                      containerColor: Colors.transparent,
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ))
                  ],
                ),
              ],
            ),
          ),
          Gap(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
            child: Column(
              children: [
                IconButton(
                  onPressed: likeComment,
                  icon: Icon(
                    liked ? Icons.favorite : Icons.favorite_outline,
                  ),
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                Name(
                  text: '43',
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
