import 'package:flutter/material.dart';

class StepsList extends StatefulWidget {
  _StepsListState createState() => _StepsListState();
}

class _StepsListState extends State<StepsList> {
  var _index = 0;
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text('Rise of the Elements'),
              subtitle: Text('RISE OF THE ELEMENTS'),
            ),
          ],
        ),
      ),
      Stepper(
          steps: [
            Step(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.phone_android,
                    color: Colors.red,
                    size: 24.0,
                    semanticLabel: 'Announcement Icon',
                  ),
                  Text(" Mobile First Design"),
                ]
              ),
              // redo with icon and text?
              content: Text("Committing to great user experiences on all devices and all on platforms."),
            ),
            Step(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.shop,
                    color: Colors.red,
                    size: 24.0,
                    semanticLabel: 'Announcement Icon',
                  ),
                  Text(" High Quality Services"),
                ]
              ),
              // redo with icon and text?
              content: Text("Providing Value To All Our Customers"),
            ),
            Step(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.account_balance,
                    color: Colors.red,
                    size: 24.0,
                    semanticLabel: 'Announcement Icon',
                  ),
                  Text(" Cheap and Affordable"),
                ]
              ),
              // redo with icon and text?
              content: Text("Providing Affordable software Development"),
            ),
          ],
          currentStep: _index,
          onStepTapped: (index) {
            setState(() {
              _index = index;
            });
          },
          controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
              Container(),
        ),
      ],
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}