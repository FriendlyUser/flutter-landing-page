import 'package:flutter/material.dart';
import 'package:flutter_webpage/LandingPage/LandingPage.dart';
import 'package:flutter_webpage/LandingPage/LandingIcon.dart';
import 'package:flutter_webpage/Navbar/Navbar.dart';
import 'package:flutter_webpage/Stats/BasicCard.dart';
import 'package:flutter_webpage/Stats/Skills.dart';
import 'package:flutter_webpage/Stats/SkillsWrap.dart';
import 'package:flutter_webpage/Stats/ProgrammingList.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Flutter Website',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage()
    );
  }
}

class SecondPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(70, 70, 220, 1.0),
                Color.fromRGBO(30, 15, 155, 1.0)
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
              )
            ],
          ),
        ),
      ),
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
                Color.fromRGBO(70, 70, 220, 1.0),
                Color.fromRGBO(30, 15, 155, 1.0)
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
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 60.0),
                child: Skills()
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 5.0, horizontal: 60.0),
                child: Text(" Programming Languages", style: TextStyle(color: Colors.white, fontSize: 30.0))
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 60.0),
                child: ProgrammingList()
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 5.0, horizontal: 60.0),
                child: Text(" Skills", style: TextStyle(color: Colors.white, fontSize: 30.0))
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0, horizontal: 60.0),
                child: SkillsWrap()
              )
            ],
          ),
        ),
      ),
    );
  }
}
