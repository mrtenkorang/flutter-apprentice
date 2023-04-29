import 'dart:js';

import 'package:flutter/material.dart';
import 'package:fooderlich/models/grocery_manager.dart';
import 'package:provider/provider.dart';
import 'empty_grocery_screen.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          //TODO: Present groceryItemScreen
        },
      ),
      body:  Container(
        child: buildGroceryScreen(),
      ),
    );
  }
  Widget buildGroceryScreen(){
    return Consumer<GroceryManager>(builder:(context, manager, child){
      if(manager.groceryItems.isNotEmpty){
        //TODO: Add groceryListScreen
        return Container();
      }else{
        return const EmptyGroceryScreen();
      }
    });
  }
}
