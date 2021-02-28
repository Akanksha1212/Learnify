import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:pdf_text/pdf_text.dart';

class TextAreaWidget extends StatefulWidget {
  final String text;

  const TextAreaWidget({
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  _TextAreaWidgetState createState() => _TextAreaWidgetState();
}

enum TtsState { playing, stopped, paused, continued }

class _TextAreaWidgetState extends State<TextAreaWidget> {
  final FlutterTts flutterTts = FlutterTts();
  String _text = "";

  bool _buttonsEnabled = true;
  TtsState ttsState = TtsState.stopped;

  String dropdownValue = 'en-US';

  // To show Selected Item in Text.
  String holder = '';

  List<String> accentName = ['en-US', 'en-IN', 'uk-UA'];
  void getDropDownItem() {
    setState(() {
      holder = dropdownValue;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String text1 = widget.text;
    Future _readAloud() async {
      if (text1 == null) {
        return;
      }
      setState(() {
        _buttonsEnabled = false;
      });

      String text2 = text1;
      if (dropdownValue == 'en-US') {
        await flutterTts.setLanguage("en-US");
      }
      if (dropdownValue == 'en-IN') {
        await flutterTts.setLanguage("en-IN");
      }
      if (dropdownValue == 'fr-FR') {
        await flutterTts.setLanguage("fr-FR");
      }
      var result = await flutterTts.speak(text2);
      if (result == 1) setState(() => ttsState = TtsState.playing);
      setState(() {
        _text = text2;
        _buttonsEnabled = true;
      });
    }

    Future _stop() async {
      var result = await flutterTts.stop();
      if (result == 1) setState(() => ttsState = TtsState.stopped);
    }

    return Scaffold(
      body: Container(
        // constraints: BoxConstraints.expand(),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage(
        //         'https://i.pinimg.com/564x/da/a5/0e/daa50e02bc71231dec51e66f2cc1cc00.jpg'),
        //     fit: BoxFit.fill,
        //   ),
        // ),
        color: Colors.white,
        child: Column(children: [
          SizedBox(height: 70),
          Container(
            height: 400,
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Text(
                text1.isEmpty ? 'Scan an Image to get text' : text1,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.black, fontSize: 18),
            underline: Container(
              height: 2,
              color: Color(0xff87dcb2),
            ),
            onChanged: (String data) {
              setState(() {
                dropdownValue = data;
              });
            },
            items: accentName.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 30),
          Container(
            height: 50,
            width: 170,
            child: RaisedButton(
              elevation: 5,
              onPressed: _buttonsEnabled ? _readAloud : () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Text(
                'Read Aloud',
                style: TextStyle(color: Colors.white),
              ),
              // icon: Image(
              //   image: AssetImage('assets/images/audio.png'),
              //   height: 40,
              //   width: 40,
              // ),
              textColor: Colors.white,
              color: Color(0xff87dcb2),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 50,
            width: 170,
            child: RaisedButton(
              elevation: 5,
              onPressed: _buttonsEnabled ? _stop : () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Text(
                'Stop',
                style: TextStyle(color: Colors.white),
              ),
              textColor: Colors.white,
              color: Color(0xff87dcb2),
            ),
          ),
        ]),
      ),
    );
  }
}
