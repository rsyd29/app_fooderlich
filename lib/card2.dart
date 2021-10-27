import 'package:flutter/material.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // 1. The Center widget has a Container child widget which has three properties, the first two being constraints and decoration.
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // 2. The third property is child and it has a Column widget, which displays its children vertically.
        child: Column(
          children: const [
            // TODO 1: add author information
            AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            )
            // TODO 4: add Positioned text
          ],
        ),
      ),
    );
  }
}
