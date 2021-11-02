import 'package:flutter/material.dart';

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
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    final categorytitle = routeArg['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle),
      ),
      body: Center(
        child: Text(categorytitle),
      ),
    );
  }
}
