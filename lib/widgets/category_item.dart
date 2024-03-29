import 'package:flutter/material.dart';
import 'package:meals_app/screen/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.red,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: color,
              offset: Offset(0, 2),
              // blurRadius: 1,
            ),
          ],
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.9),
              color,
            ],
            // begin: Alignment.topLeft,
            // end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
