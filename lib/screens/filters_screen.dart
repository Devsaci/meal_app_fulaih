import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:meal_app_fulaih/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function saveFilters;
  final MapBase<String,bool> currentFilters;
  FiltersScreen(this.currentFilters, this.saveFilters);


  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _GlutenFree = false;
  bool _LactoseFree = false;
  bool _Vegan = false;
  bool _Vegetarian = false;


  @override
  initState(){

  }

  Widget buildeSwitchLisTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(description),
      value: currentValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
        actions: [
          IconButton(
            onPressed: () {
              final Map<String, bool> selectedFilters = {
                'gluten': _GlutenFree,
                'lactose': _LactoseFree,
                'vega': _Vegan,
                'vegetarian': _Vegetarian,
              };
              widget.saveFilters(selectedFilters);
            },
            icon: Icon(
              Icons.save,
              size: 25,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal selection",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildeSwitchLisTile(
                  "Gluten-free",
                  "Only Include Gluten-free meals",
                  _GlutenFree,
                  (newValue) {
                    setState(() {
                      _GlutenFree = newValue;
                    });
                  },
                ),
                buildeSwitchLisTile(
                  "Lactose-free",
                  "Only Include Lactose-free meals",
                  _LactoseFree,
                  (newValue) {
                    setState(() {
                      _LactoseFree = newValue;
                    });
                  },
                ),
                buildeSwitchLisTile(
                  "Vegetarian",
                  "Only Include Vegetarian meal",
                  _Vegetarian,
                  (newValue) {
                    setState(() {
                      _Vegetarian = newValue;
                    });
                  },
                ),
                buildeSwitchLisTile(
                  "Vagan",
                  "Only Include Vagan meal",
                  _Vegan,
                  (newValue) {
                    setState(() {
                      _Vegan = newValue;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
      // ignore: prefer_const_constructors
      drawer: MainDrawer(),
    );
  }
}
