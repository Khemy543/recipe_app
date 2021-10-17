import 'package:flutter/material.dart';
import 'package:flutter_apprentice/helpers/recipe.dart';

Widget buildRecipeCard(Recipe recipe) {
  // 1
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    // 2
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        // 3
        children: <Widget>[
          // 4
          Image(image: AssetImage(recipe.imageUrl)),
          const SizedBox(
            height: 14.0,
          ),
          // 5
          Text(recipe.label,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Palatino')),
        ],
      ),
    ),
  );
}
