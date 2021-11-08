


import 'package:flutter/material.dart';
import 'package:meal_app_fulaih/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key key}) : super(key: key);
  static const routeName = '/filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Filters"),),
      body: Center(
        child: Text("FiltersScreen"),
      ),
      drawer: MainDrawer(),

    );
  }
}
