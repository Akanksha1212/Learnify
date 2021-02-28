import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnify/game/game.dart';
import 'package:learnify/pages/homepage.dart';
import 'package:learnify/pages/textToSpeech.dart';
import 'package:learnify/pages/friendly.dart';
import 'package:learnify/pages/counsellor.dart';
import 'package:learnify/pages/speechText.dart';
import 'package:learnify/pages/resources.dart';
import 'package:learnify/pages/ttsOptions.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Audio", img: "assets/images/audio.png", screen: Option());

  Items item2 = new Items(
      title: "Friendly Font",
      img: "assets/images/pdf.png",
      screen: FriendlyFont());

  Items item3 = new Items(
      title: "Notemaker", img: "assets/images/mic.png", screen: SpeechScreen());
  Items item4 = new Items(
      title: "Counsellor",
      img: "assets/images/counsellor.png",
      screen: CallCounsellor());
  Items item5 =
      new Items(title: "Games", img: "assets/images/more.png", screen: Game());
  Items item6 =
      new Items(title: "More", img: "assets/images/book.png", screen: Home());

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
    ];
    //var color = Colors.lightGreen;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 14, right: 14),
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: myList.map((data) {
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff87dcb2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 60,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      data.title,
                      style: TextStyle(
                          fontFamily: 'Open-Dyslexic',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => data.screen),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Widget screen;
  Items({this.title, this.img, this.screen});
}
