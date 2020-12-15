import 'package:delicious_meals/models/category.dart';
import 'package:delicious_meals/screens/meals/main.dart';
import 'package:flutter/material.dart';



class CategoryItem extends StatelessWidget {
  final Category _category;

  CategoryItem(this._category);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MealsScreen.route, arguments: _category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _category.color.withOpacity(.7),
              _category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          _category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
