import 'package:flutter/material.dart';
import 'package:flutter_webpage/LandingPage/LandingPage.dart';
import 'package:flutter_webpage/LandingPage/LandingIcon.dart';
import 'package:flutter_webpage/Navbar/Navbar.dart';
import 'package:flutter_webpage/Stats/BasicCard.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Flutter Website',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(90, 58, 0, 1.0),
                Color.fromRGBO(49, 195, 20, 1.0)
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: BasicCard()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
