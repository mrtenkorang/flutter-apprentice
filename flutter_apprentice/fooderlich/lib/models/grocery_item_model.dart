import 'package:flutter/painting.dart';
// 1
enum Importance {
  low,
  medium,
  high,
}
class GroceryItem {
  final String id;
  final String name;
  final Importance importance;
  final Color color;
  final int quantity;
  final DateTime date;
  final bool isComplete;

  GroceryItem({
    required this.id,
    required this.name,
    required this.importance,
    required this.color,
    required this.quantity,
    required this.date,
    this.isComplete = false,
  });
}
// 4
GroceryItem copyWith(GroceryItem currentItem, {
  String? id,
  String? name,
  Importance? importance,
  Color? color,
  int? quantity,
  DateTime? date,
  bool? isComplete,
}) {
  return GroceryItem(
      id: id ?? currentItem.id,
      name: name ?? currentItem.name,
      importance: importance ?? currentItem.importance,
      color: color ?? currentItem.color,
      quantity: quantity ?? currentItem.quantity,
      date: date ?? currentItem.date,
      isComplete: isComplete ?? currentItem.isComplete);
}


