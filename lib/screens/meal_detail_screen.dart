import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key key}) : super(key: key);
  static const routeName = 'meals_detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(" "),
      ),
      body: null,
    );
  }
}
