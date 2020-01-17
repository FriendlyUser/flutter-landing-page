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
                  Icons.high_quality,
                  color: Colors.blue,
                  size: 72.0,
                  semanticLabel: 'Skills Icon',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(" Surpassing expectations by delivering high quality products.",
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
                Icons.cloud_download,
                color: Colors.blue,
                size: 72.0,
                semanticLabel: 'Clouds Icon',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(" Experienced in Creating and Deployed Cloud Native Applications",
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center
                )
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
                Icons.https,
                color: Colors.blue,
                size: 72.0,
                semanticLabel: 'Https Icon',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(" Securing Applications",
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center
                )
              ),
            ]
          )
        ),
      ],
    );
  }
}
