import 'package:flutter/material.dart';
class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            // color: Colors.red,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.android,
                  color: Colors.blue,
                  size: 72.0,
                  semanticLabel: 'Skills Icon',
                ),
                Text(" Skilled in Java and Mobile Development in React Native",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center)
              ]
            )
          ),
          Container(
            width: 160.0,
            // color: Colors.blue,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.developer_board,
                  color: Colors.green,
                  size: 72.0,
                  semanticLabel: 'Planned Development',
                ),
                Text(" Planned Software Development",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)
                )
              ]
            )
          ),
          Container(
            width: 160.0,
            // color: Colors.green,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.new_releases,
                  color: Colors.black,
                  size: 72.0,
                  semanticLabel: 'Planned Development',
                ),
                Text(" Releasing New Products",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)
                )
              ]
            )
          ),
          Container(
            width: 160.0,
            // color: Colors.yellow,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.poll,
                  color: Colors.orange,
                  size: 72.0,
                  semanticLabel: 'Planned Development',
                ),
                Text(" Performing Market Analysis", style: TextStyle(color: Colors.white), textAlign: TextAlign.center)
              ]
            )
          ),
        ],
      ),
    );
  }
}