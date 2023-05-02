import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../models/grocery_item_model.dart';

class GroceryTile extends StatelessWidget {
  final GroceryItem item;
  final Function(bool) onComplete;
  final TextDecoration textDecoration;

  GroceryTile(
      {super.key,
      required this.item,
      required this.onComplete,
      })
      : textDecoration = item.isComplete ? TextDecoration.lineThrough:TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    //TODO: Change this widget
    return Container(
      height: 100.0,
      //TODO: Replace this color
      color: Colors.red,
    );
  }
  Widget buildImportance(){
    if(item.importance == Importance.low){
      return Text(
        "Low",
        style: GoogleFonts.lato(decoration: textDecoration),
      );
    } else if (item.importance == Importance.medium){
      return Text(
        "Medium",
        style: GoogleFonts.lato(
          fontWeight: FontWeight.w800,
          decoration: textDecoration
        ),
      );
    }else if(item.importance == Importance.high){
      return Text(
        "High",
        style: GoogleFonts.lato(
          color: Colors.red,
          fontWeight: FontWeight.w900,
          decoration: textDecoration
        ),
      );
    }else{
      throw Exception("This importance does not exist");
    }
  }

  //TODO: Add buildDate()

  //TODO: Add buildCheckBox()
}
