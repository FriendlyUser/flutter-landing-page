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
            color: Colors.red,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.android,
                  color: Colors.red,
                  size: 72.0,
                  semanticLabel: 'Skills Icon',
                ),
                Text(" Skilled in Java and Mobile Development in React Native")
              ]
            )
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.developer_board,
                  color: Colors.blue,
                  size: 72.0,
                  semanticLabel: 'Planned Development',
                ),
                Text(" Planned Software Development")
              ]
            )
          ),
          Container(
            width: 160.0,
            color: Colors.green,
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
          ),
          Container(
            width: 160.0,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}