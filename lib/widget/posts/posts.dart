import 'package:flutter/material.dart';

import '../text/name.dart';

class PostsContainer extends StatelessWidget {
  const PostsContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
        ),
      )),
      child: ListTile(
        onTap: () {},
        leading: const CircleAvatar(
          radius: 25,
        ),
        title: Name(
          text: 'Exploring Indiana in the midst of whatever',
          maxLines: 2,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Name(
          text: 'What about the new jacket i blah blah blach',
          maxLines: 1,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        trailing: Text(
          '${DateTime.now().month}/${DateTime.now().year}',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
    );
  }
}
