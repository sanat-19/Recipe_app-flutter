import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class AllMeals extends StatelessWidget {
  List<Meal> items = DUMMY_MEALS;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            id: items[index].id,
            title: items[index].title,
            imageUrl: items[index].imageUrl,
            duration: items[index].duration,
            complexity: items[index].complexity,
            affordability: items[index].affordability,
          );
        },
      ),
    );
  }
}
