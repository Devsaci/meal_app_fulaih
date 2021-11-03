import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final int duration;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({
    @required this.title,
    @required this.duration,
    @required this.imageUrl,
    @required this.complexity,
    @required this.affordability,
  });

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    color: Color(0x50000000),
                    width: 220,
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.yellow,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
