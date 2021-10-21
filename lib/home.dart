// 1. Your new class extends StatefulWidget.
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: Add state variables and functions
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          // 2. The AppBar style now reads: Theme.of(context).textTheme.headline6 instead of: theme.textTheme.headline6. Theme.of(context) returns the nearest Theme in the widget tree. If the widget has a defined Theme, it returns that. Otherwise, it returns the app’s theme.
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: Center(
        child: Text(
          'Let\'s get cooking 👩‍🍳',
          // 3. As with the AppBar, you’ve also updated the Text style to use the Theme.of(context).
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO: Add bottom navigation bar
    );
  }
}
