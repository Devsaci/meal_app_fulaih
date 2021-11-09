
import 'package:flutter/material.dart';
import 'package:meal_app_fulaih/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key key}) : super(key: key);
  static const routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _GlutenFree = false;
  bool _LactoseFree = false;
  bool _Vegan = false;
  bool _Vegetarian = false;

  Widget buildeSwitchLisTile(){
    return SwitchListTile(
      title: Text("Gluten Free"),
      subtitle: Text("Only include gluten free meals"),
      value: _GlutenFree,
      onChanged: (newValue){
        setState(() {
          _GlutenFree = newValue;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
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

              ],
            ),
          )
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
