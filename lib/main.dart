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
        .dark(); // to see the difference between light and dark mode. Change the theme between FooderlichTheme.dark() and FooderlichTheme.light().
    // TODO: Apply Home Widget
    // 3. The Fooderlich widget starts by composing a MaterialApp widget to give it a Material Design system look and feel. See https://material.io for more details about it.
    return MaterialApp(
      // Added the MaterialApp widget’s theme property.
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
