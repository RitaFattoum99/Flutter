import 'package:flutter/material.dart';
import 'userProfile_screen.dart';
import '../screens/categories_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  final List<Widget> _sereens = [
    CategoriesScreen(),
    Body(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("MR SHOP"),
      // ),
      body: _sereens[_selectedScreenIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).canvasColor,
        animationDuration: Duration(
          milliseconds: 200,
        ),
        height: 50,
        // buttonBackgroundColor: Theme.of(context).canvasColor,
        items: [
          Icon(
            Icons.dashboard,
            color: Theme.of(context).canvasColor,
          ),
          Icon(
            Icons.person,
            color: Theme.of(context).canvasColor,
          ),
        ],
        onTap: _selectScreen,
      ),
    );
  }
}
