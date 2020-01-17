import 'package:flutter/material.dart';
class SkillsWrap extends StatelessWidget {
  @override 
  Widget build(BuildContext build) {
    return Wrap(
      spacing: 64.0, // gap between adjacent chips
      runSpacing: 64.0, // gap between lines
      children: <Widget>[
        Container(
          width: 200.0,
          decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 2.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
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
                  bottom: 10,
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
          decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 2.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                )
              ],
          ),
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
          decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 2.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                )
              ],
          ),
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
