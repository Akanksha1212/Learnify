import 'package:flutter/material.dart';
import 'package:learnify/widget/text_recognition_widget.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Scan', style: TextStyle(color: Colors.black)),
          elevation: 2,
          brightness: Brightness.light,
          backgroundColor: Color(0xff87dcb2),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(height: 25),
              TextRecognitionWidget(),
              const SizedBox(height: 15),
            ],
          ),
        ),
      );
}
