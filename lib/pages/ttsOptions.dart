import 'package:flutter/material.dart';
import 'package:learnify/pages/scan.dart';
import 'package:learnify/pages/textToSpeech.dart';

class Option extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightGreen[100],
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/50/e5/41/50e5411a9ddc169455ba07ac77ca674a.jpg"),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 260,
                  child: RaisedButton.icon(
                    elevation: 5,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TextToSpeech()),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    label: Text(
                      'PDF to Audio',
                      style: TextStyle(
                          fontFamily: 'Open-Dyslexic',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    icon: Image(
                      image: NetworkImage(
                          'https://image.flaticon.com/icons/png/512/337/337946.png'),
                      height: 40,
                      width: 40,
                    ),
                    textColor: Colors.white,
                    color: Color(0xff87dcb2),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  width: 260,
                  child: RaisedButton.icon(
                    elevation: 5,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Scan()),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    label: Text(
                      'Image to Audio',
                      style: TextStyle(
                          fontFamily: 'Open-Dyslexic',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    icon: Image(
                      image: NetworkImage(
                          'https://www.freeiconspng.com/uploads/multimedia-photo-icon-31.png'),
                      height: 40,
                      width: 40,
                    ),
                    textColor: Colors.white,
                    color: Color(0xff87dcb2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
