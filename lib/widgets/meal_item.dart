import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
   MealItem({Key key});

   void selectMeal() {
   }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
    );
  }
}
