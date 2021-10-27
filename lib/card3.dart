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
            // TODO 6: add Container, Column, Icon and Text
            // TODO 7: add Center widget with Chip widget children
          ],
        ),
      ),
    );
  }
}
