import 'package:flutter/material.dart';
import 'package:learnify/pages/homepage.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/564x/4d/a1/65/4da1651076353fd44399554047d53b05.jpg"),
                  fit: BoxFit.cover)),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Image.asset(''),
              Text(
                'Learnify',
                style: GoogleFonts.abel(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 80,
                        fontWeight: FontWeight.w100)),
              )
            ],
          ))),
    );
  }
}
