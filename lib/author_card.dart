import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  // 1. AuthorCard has three properties: authorName, the author’s job title and the profile image, which imageProvider handles.
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  // 2. AuthorCard is grouped in a container and uses a Row widget to lay out the other widgets horizontally.
  @override
  Widget build(BuildContext context) {
    // TODO: Replace return Container(...);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // TODO 3: add alignment
        children: [
          // 1. The inner Row groups the CircleImage and the author’s Text information.
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              // 2. Applies 8 pixels of padding between the image and the text.
              const SizedBox(
                width: 8,
              ),
              // 3. Lays out the author’s name and job title vertically using a Column.
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
          // TODO 2: add IconButton
        ],
      ),
    );
  }
}
