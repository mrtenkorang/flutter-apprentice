import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/explore_screen.dart';
import 'package:fooderlich/screens/grocery_screen.dart';
import 'package:provider/provider.dart';
import 'screens/recipe_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    RecipeScreen(),
    const GroceryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child){
      return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Fooderlich',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        //TODO: replace body
        body: pages[tabManager.selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: tabManager.selectedTab,
          onTap: (index)=>tabManager.goToTab(index),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'To Buy',
            ),
          ],
        ),
      );
    });
  }
}