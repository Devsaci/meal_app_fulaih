import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categoryitem extends StatelessWidget {

  final String id;
  final String title;
  final Color color;

  // ignore: prefer_const_constructors_in_immutables
  Categoryitem(this.id, this.title, this.color, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.2),
                color
              ],
              begin: Alignment.topLeft,
              end:Alignment.bottomRight,),
            color: color,
            borderRadius: BorderRadius.circular(20)

        ),

      ),
    );
  }
}
