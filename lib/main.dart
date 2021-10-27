import 'package:flutter/material.dart';

// Imported the FooderlichTheme.
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  // 1. Everything in Flutter starts with a widget. runApp() takes in the root widget Fooderlich.
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2. Every stateless widget must override the build() method.
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Defined a variable that holds the theme.
    final theme = FooderlichTheme
        .light(); // to see the difference between light and dark mode. Change the theme between FooderlichTheme.dark() and FooderlichTheme.light().
    // 3. The Fooderlich widget starts by composing a MaterialApp widget to give it a Material Design system look and feel. See https://material.io for more details about it.
    return MaterialApp(
      // Added the MaterialApp widget’s theme property.
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}

/***
 * Where to go from here?

    If you want to learn more theory about how widgets work, check out the following links:

    1. Detailed architectural overview of Flutter and widgets: https://flutter.dev/docs/resources/architectural-overview.

    2. The Flutter team created a YouTube series explaining widgets under the hood: https://www.youtube.com/playlist?list=PLjxrf2q8roU2HdJQDjJzOeO6J3FoFLWr2.

    3. The Flutter team gave a talk in China on how to render widgets: https://youtu.be/996ZgFRENMs.
 */
