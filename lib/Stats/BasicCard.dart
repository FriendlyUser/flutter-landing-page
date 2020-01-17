import 'package:flutter/material.dart';

class BasicCard extends StatefulWidget {
  _BasicCardState createState() => _BasicCardState();
}

class _BasicCardState extends State<BasicCard> {
  var _index = 0;

  @override
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /*             
            Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('The Enchanted Nightingale'),
                      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                    Text('Craft beautiful UIs'),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('BUY TICKETS'),
                          onPressed: () { /* ... */ },
                        ),
                        FlatButton(
                          child: const Text('LISTEN'),
                          onPressed: () { /* ... */ },
                        ),
                      ],
                    ),
                  ]
                )
              ),
            ),
            */
            Stepper(
              steps: [
                Step(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.phone_android,
                        color: Colors.white,
                        size: 24.0,
                        semanticLabel: 'Announcement Icon',
                      ),
                      Text(" Mobile First Design", style: TextStyle(color: Colors.white)),
                    ]
                  ),
                  // redo with icon and text?
                  content: Text("Committing to great user experiences on all devices and all on platforms.", style: TextStyle(color: Colors.white)),
                ),
                Step(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.shop,
                        color: Colors.white,
                        size: 24.0,
                        semanticLabel: 'Announcement Icon',
                      ),
                      Text(" High Quality Services", style: TextStyle(color: Colors.white)),
                    ]
                  ),
                  // redo with icon and text?
                  content: Text("Providing Value To All Our Customers", style: TextStyle(color: Colors.white)),
                ),
                Step(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                        color: Colors.white,
                        size: 24.0,
                        semanticLabel: 'Announcement Icon',
                      ),
                      Text(" Cheap and Affordable", style: TextStyle(color: Colors.white)),
                    ]
                  ),
                  // redo with icon and text?
                  content: Text("Providing Affordable software Development", style: TextStyle(color: Colors.white)),
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
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
