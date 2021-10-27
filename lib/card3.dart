import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                // 1. You add a container with a color overlay with a 60% semi-transparent background to make the image appear darker.
                color: Colors.black.withOpacity(0.6),
                // 2. This gives the appearance of rounded image corners.
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            Container(
              // 3. Apply padding of 16 pixels on all sides.
              padding: const EdgeInsets.all(16),
              // 4. Set up a child Column to lay out the widgets vertically.
              child: Column(
                // 5. Position all the widgets to the left of the column.
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 6. Add a book icon.
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  // 7. Apply a 8-pixel space vertically.
                  const SizedBox(
                    height: 8,
                  ),
                  // 8. Add the text widget.
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  // 9. Apply a 30-pixel space vertically.
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
            // TODO 7: add Center widget with Chip widget children
          ],
        ),
      ),
    );
  }
}
