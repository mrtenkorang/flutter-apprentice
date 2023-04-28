import 'package:flutter/material.dart';

import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.name),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl!),
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              widget.recipe.name,
              style: TextStyle(fontSize: 18.0),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (context, index) {
                  final ingredient = widget.recipe.ingredients[index];

                  return Text('${ingredient.quantity * _sliderValue} ${ingredient.measure} ${ingredient.name}');
                },
              ),
            ),

            Slider(
              min: 1,
              max: 10,
              divisions: 9,
              value: _sliderValue.toDouble(),
              onChanged: (newValue) {
                setState(
                  () {
                    _sliderValue = newValue.round();
                  },
                );
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            )
            // TODO: Add slider() here
          ],
        ),
      ),
    );
  }
}
