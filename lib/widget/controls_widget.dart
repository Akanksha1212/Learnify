import 'package:learnify/widget/text_area_widget.dart';
import 'package:flutter/material.dart';
import 'package:learnify/widget/text_area_widget.dart';

class ControlsWidget extends StatelessWidget {
  final VoidCallback onClickedPickImage;
  final VoidCallback onClickedScanText;
  final VoidCallback result;

  const ControlsWidget({
    @required this.onClickedPickImage,
    @required this.onClickedScanText,
    @required this.result,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Container(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 170,
                  child: RaisedButton.icon(
                    elevation: 5,
                    onPressed: onClickedPickImage,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    label: Text(
                      'Click Image',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Image(
                      image: AssetImage('assets/images/camera.png'),
                      height: 40,
                      width: 40,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.green[300],
                    color: Color(0xff87dcb2),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  height: 50,
                  width: 170,
                  child: RaisedButton.icon(
                    elevation: 5,
                    onPressed: onClickedScanText,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    label: Text(
                      'Scan',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Image(
                      image: AssetImage('assets/images/scan.png'),
                      height: 40,
                      width: 40,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.green[300],
                    color: Color(0xff87dcb2),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              width: 170,
              child: RaisedButton.icon(
                elevation: 5,
                onPressed: result,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                label: Text(
                  'Result',
                  style: TextStyle(color: Colors.white),
                ),
                icon: Image(
                  image: AssetImage('assets/images/magic.png'),
                  height: 40,
                  width: 40,
                ),
                textColor: Colors.white,
                splashColor: Colors.green[300],
                color: Color(0xff87dcb2),
              ),
            ),
          ]),
        ),
      );
}
