import 'package:flutter/material.dart';
import 'package:fooderlich/home.dart';
import 'fooderlich_theme.dart';
import 'package:provider/provider.dart';
import 'package:fooderlich/models/models.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    // 3
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Fooderlich',
      // 4
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=> TabManager()),
          ChangeNotifierProvider(create: (context)=>GroceryManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
