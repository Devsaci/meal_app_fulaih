

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
    return Scaffold(
      appBar: AppBar(title: Text("_CategoryMealsScreenState"),),
    );
  }
}
