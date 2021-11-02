import 'package:flutter/material.dart';
import 'package:meal_app_fulaih/dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  CategoryMealsScreen({Key key});

  static const routeName = 'categoty_meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
    ModalRoute
        .of(context)
        .settings
        .arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    final categorytitle = routeArg['title'];
    final categoryMeals = DUMMY_MEALS.where((element) => false).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle),
      ),
      body: ListView.builder(itemBuilder: (ctx, index){}, ),
    );
  }
}
