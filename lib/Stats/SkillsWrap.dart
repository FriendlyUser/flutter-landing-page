import 'package:flutter/material.dart';
class SkillsWrap extends StatelessWidget {
  @override 
  Widget build(BuildContext build) {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 64.0, // gap between lines
      children: <Widget>[
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
