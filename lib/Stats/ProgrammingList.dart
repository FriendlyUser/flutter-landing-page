import 'package:flutter/material.dart';
class ProgrammingList extends StatelessWidget {
  @override 
  Widget build(BuildContext build) {
    return Wrap(
      spacing: 16.0, // gap between adjacent chips
      runSpacing: 8.0, // gap between lines
      children: <Widget>[
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.green.shade900, child: Text('Vue')),
          label: Text('Vue'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('React')),
          label: Text('React'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade500, child: Text('Typescript')),
          label: Text('Typescript'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade200, child: Text('Flutter')),
          label: Text('Flutter'),
        ),
      ],
    );
  }
}
