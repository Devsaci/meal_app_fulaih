import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import 'screens/tabs_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten' : false,
    'lactose' : false,
    'vega' : false,
    'vegetarian' : false,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              // ignore: prefer_const_constructors
              bodyText1: TextStyle(
                // ignore: prefer_const_constructors
                color: Color.fromRGBO(20, 50, 50, 1),
              ),
              // ignore: prefer_const_constructors
              bodyText2: TextStyle(
                // ignore: prefer_const_constructors
                color: Color.fromRGBO(20, 50, 50, 1),
              ),
              // ignore: prefer_const_constructors
              subtitle1: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 18),
            ),
      ),
      // home: MyHomePage(),
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        // ignore: prefer_const_constructors
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        // ignore: prefer_const_constructors
        FiltersScreen.routeName: (context) => FiltersScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Meal AppFoulaih sdk: >=2.7.0 <3.0.0"),
      ),
      body: null,
    );
  }
}
