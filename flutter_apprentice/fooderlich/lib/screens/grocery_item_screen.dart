import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid_util.dart';
import 'package:fooderlich/models/models.dart';


class GroceryItemScreen extends StatefulWidget {

  final Function(GroceryItem) onCreate;
  final Function(GroceryItem) onUpdated;
  final GroceryItem? originalItem;
  final bool isUpdating;

  const GroceryItemScreen({super.key,
    required this.onCreate,
    required this.onUpdated,
    this.originalItem,
    }) : isUpdating = (originalItem != null);

  @override
  State<GroceryItemScreen> createState() => _GroceryItemScreenState();
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
    // TODO: Add buildNameField()
    // TODO: Add buildImportanceField()
    // TODO: ADD buildDateField()
    // TODO: Add buildTimeField()
    // TODO: Add buildColorPicker()
    // TODO: Add buildQuantityField()
  }
}
