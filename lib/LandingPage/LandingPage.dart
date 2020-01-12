import 'package:flutter/material.dart';
import 'package:flutter_webpage/LandingPage/LandingIcon.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(width: 20.0, height: 100.0),
                Text(
                  "Website",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                ),
                SizedBox(width: 20.0, height: 100.0),
                ScaleAnimatedTextKit(
                  onTap: () {},
                  text: ["Developers", "Engineers", "Designers"],
                  textStyle: TextStyle(fontSize: 40.0, color: Colors.white),
                  textAlign: TextAlign.start,
                  alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "We have taken each and every project handed over to us as a challenge, which has helped us achieve a high project success rate.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Our Packages",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: LandingIcon()
      )
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
