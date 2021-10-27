import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatefulWidget {
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

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1. The inner Row groups the CircleImage and the author’s Text information.
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
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
                    widget.authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            // 4. Set the icon, size and color of the icon.
            icon: Icon(
              // First, it checks if the user has favorited this recipe card. If true, it shows a filled heart. If false, it shows an outlined heart.
              _isFavorited ? Icons.favorite : Icons.favorite_border,
            ),
            iconSize: 30,
            // It changes the color to red to give the app more life.
            color: Colors.red[400],
            // 5. When the user presses the icon, display a snackbar.
            onPressed: () {
              // When the user presses the IconButton, it toggles the _isFavorited state via a call to setState().
              setState(() {
                _isFavorited = !_isFavorited;
              });
            },
          )
        ],
      ),
    );
  }
}
