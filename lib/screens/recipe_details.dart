import 'package:flutter/material.dart';
import 'package:flutter_apprentice/helpers/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recipe.imageUrl)),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18.0),
            ),
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(7.0),
                    itemCount: widget.recipe.ingridients.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ingredient = widget.recipe.ingridients[index];
                      return Text(
                          '${ingredient.quantity * sliderVal} ${ingredient.name} ${ingredient.measure}');
                    })),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              value: sliderVal.toDouble(),
              onChanged: (newVal) {
                setState(() {
                  sliderVal = newVal.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
