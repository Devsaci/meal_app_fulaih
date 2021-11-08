import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  CategoryMealsScreen({Key key});

  static const routeName = 'categoty_meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> displayeMeal;


  @override
  void didChangeDependencies() {
    final routeArg =
    ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    categoryTitle = routeArg['title'];
    displayeMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  @override
  void initState() {
    //Exception caught by widgets library
    // The following assertion was thrown building Builder:
    // dependOnInheritedWidgetOfExactType<_ModalScopeStatus>() or
    // dependOnInheritedElement() was called before _CategoryMealsScreenState.initState() completed.


    super.initState();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayeMeal.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: displayeMeal[index].id,
              title: displayeMeal[index].title,
              duration: displayeMeal[index].duration,
              imageUrl: displayeMeal[index].imageUrl,
              complexity: displayeMeal[index].complexity,
              affordability: displayeMeal[index].affordability,
              removeItem:  _removeMeal,
              );

        },
        itemCount: displayeMeal.length,
      ),
    );
  }
}
