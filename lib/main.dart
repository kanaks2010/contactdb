import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dbzone.dart';

void main() =>
    runApp(MaterialApp(
      theme:
      ThemeData(primaryColor: Colors.teal, accentColor: Colors.cyanAccent),
      debugShowCheckedModeBanner: false,
      home: DbSplashScreen(),
    ));

class DbSplashScreen extends StatefulWidget {
  @override
  _DbSplashScreenState createState() => new _DbSplashScreenState();
}

class _DbSplashScreenState extends State<DbSplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => DbZone())));
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Stack(

        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.teal),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(

                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 80.0,
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: new Image.asset('assets/img/dblogo.png'),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "DB Contacts",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(padding: EdgeInsets.only(top: 20.0),),
                      Text("Welcome to db contact",
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w400, fontSize: 16.0),)
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
