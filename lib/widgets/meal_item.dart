import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  MealItem({Key key});

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 2,
          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network("src"),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
