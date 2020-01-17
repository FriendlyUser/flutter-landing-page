import 'package:flutter/material.dart';
class SkillsWrap extends StatelessWidget {
  @override 
  Widget build(BuildContext build) {
    return Wrap(
      spacing: 32.0, // gap between adjacent chips
      runSpacing: 64.0, // gap between lines
      children: <Widget>[
        Container(
          width: 200.0,
          color: Colors.white,
          decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 5.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                  offset: Offset(
                    5.0, // Move to right 10  horizontally
                    5.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 0,
                  top: 20,
                  right: 0,
                  bottom: 20,
                ),
                child: Icon(
                  Icons.android,
                  color: Colors.blue,
                  size: 72.0,
                  semanticLabel: 'Skills Icon',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(" Skilled in Java and Mobile Development in React Native",
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center)
              ),
            ]
          )
        ),
        Container(
          width: 200.0,
          color: Colors.purple,
          child: Column(
            children: <Widget>[
              Icon(
                Icons.android,
                color: Colors.white,
                size: 72.0,
                semanticLabel: 'Skills Icon',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(" Skilled in Java and Mobile Development in React Native",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center)
              ),
            ]
          )
        ),
        Container(
          width: 200.0,
          // color: Colors.red,
          child: Column(
            children: <Widget>[
              Icon(
                Icons.android,
                color: Colors.blue,
                size: 72.0,
                semanticLabel: 'Skills Icon',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(" Skilled in Java and Mobile Development in React Native",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center)
              ),
            ]
          )
        ),
      ],
    );
  }
}
