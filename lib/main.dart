import 'package:flutter/material.dart';
// Imported the FooderlichTheme.
import 'fooderlich_theme.dart';

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
      // 4. The MaterialApp widget contains a Scaffold widget, which defines the layout and structure of the app. The scaffold has two properties: an appBar and a body. An Appbar’s title contains a Text widget. The body has a Center widget, whose child property is a Text widget.
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            // Added AppBar text styling.
            style: theme.textTheme.headline6,
          ),
        ),
        body: Center(
          child: Text(
            'Let\'s get cooking 👩‍🍳',
            // Finally, added body text styling.
            style: theme.textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
