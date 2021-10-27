// 1. Your new class extends StatefulWidget.
import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // _selectedIndex keeps track of which tab is currently selected. The underscore in _selectedIndex signifies it’s private. The selected index is the state being tracked by _HomeState.
  int _selectedIndex = 0;

  // Here, you define the widgets that will display on each tab. For now, when you tap between the different tab bar items, it shows container widgets of different colors. Soon, you’ll replace each of these with card widgets.
  static List<Widget> pages = const <Widget>[
    Card1(),
    Card2(),
    Card3(),
  ];

  // This function handles tapped tab bar items. Here, you set the index of the item that the user pressed. setState() notifies the framework that the state of this object has changed, then rebuilds this widget internally.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: pages[_selectedIndex],
      // 4. Defined a BottomNavigationBar.
      bottomNavigationBar: BottomNavigationBar(
        // 5. Set the selection color of an item when tapped.
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // currentIndex will tell the bottom navigation bar which tab bar item to highlight.
        currentIndex: _selectedIndex,
        // When the user taps on a tab bar item, it calls the _onItemTapped handler, which updates the state with the correct index. In this case, it changes the color.
        onTap: _onItemTapped,
        // 6. Defined three bottom navigation tab bar items.
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
