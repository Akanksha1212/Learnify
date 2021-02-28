import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallCounsellor extends StatelessWidget {
  String mobilenum = '0522121234';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        brightness: Brightness.light,
        backgroundColor: Color(0xff87dcb2),
        title: Text('Counsellor'),
      ),
      body: Container(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/con.png'),
              // height: 150,
              // width: 150,
            ),
            RaisedButton(
              child: Text(
                'Call the Counsellor',
                style: TextStyle(
                    color: Color(0xFF20124d),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              color: Color(0xff87dcb2),
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: Colors.black)),
              onPressed: () {
                _makePhoneCall('tel:$mobilenum');
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _makePhoneCall(String number) async {
    if (await canLaunch(number)) {
      await launch(number);
    } else {
      throw 'Could not launch $number';
    }
  }
}
