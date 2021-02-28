import 'dart:io';
import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:pdf_text/pdf_text.dart';

class FriendlyFont extends StatefulWidget {
  @override
  _FriendlyFontState createState() => _FriendlyFontState();
}

class _FriendlyFontState extends State<FriendlyFont> {
  PDFDoc _pdfDoc;
  String _text = "";

  bool _buttonsEnabled = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        brightness: Brightness.light,
        backgroundColor: Color(0xff87dcb2),
        title: Text('Friendly Font'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            FlatButton(
              child: Text(
                "Choose PDF",
                style: TextStyle(color: Colors.white),
              ),
              color: Color(0xff87dcb2),
              onPressed: _pickPDFText,
              padding: EdgeInsets.all(5),
            ),
            FlatButton(
              child: Text(
                "Show",
                style: TextStyle(color: Colors.white),
              ),
              color: Color(0xff87dcb2),
              onPressed: _buttonsEnabled ? _readWholeDoc : () {},
              padding: EdgeInsets.all(5),
            ),
            Padding(
              child: Text(
                _pdfDoc == null
                    ? "Pick a new PDF document and wait for it to load..."
                    : "PDF document loaded, ${_pdfDoc.length} pages\n",
                style: TextStyle(fontFamily: 'Open-Dyslexic', fontSize: 18),
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(15),
            ),
            Padding(
              child: Text(
                _text == "" ? "" : "Text:",
                style: TextStyle(fontFamily: 'Open-Dyslexic', fontSize: 18),
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(15),
            ),
            Text(
              _text,
              style: TextStyle(fontFamily: 'Open-Dyslexic', fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }

  /// Picks a new PDF document from the device
  Future _pickPDFText() async {
    FilePickerResult result = await FilePicker.platform.pickFiles();
    File file;
    if (result != null) {
      file = File(result.files.single.path);
    }
    _pdfDoc = await PDFDoc.fromFile(file);
    setState(() {});
  }

  /// Reads the whole document
  Future _readWholeDoc() async {
    if (_pdfDoc == null) {
      return;
    }
    setState(() {
      _buttonsEnabled = false;
    });

    String text = await _pdfDoc.text;

    setState(() {
      _text = text;
      _buttonsEnabled = true;
    });
  }
}
