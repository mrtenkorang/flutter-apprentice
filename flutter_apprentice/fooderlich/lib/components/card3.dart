import 'package:flutter/material.dart';
import 'package:fooderlich/models/explore_recipe.dart';
import 'dart:developer';
import '../fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card3({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 280,
          height: 380,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/mag2.png",
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // This makes the image more darker by staking a dark color on to the image
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    "Recipe Trends",
                    style: FooderlichTheme.darkTextTheme.displayMedium,
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 5,
                runSpacing: 5,
                children: [
                  Chip(
                    label: Text(
                      "Healthy",
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      log("deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Vegan",
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      log("deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Carrots",
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      log("deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Wheat",
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      log("deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Greens",
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      log("deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Mint",
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      log("deleted");
                    },
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
