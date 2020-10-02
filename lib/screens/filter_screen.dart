import 'package:angadi/widgets/retrosliderthumbshape.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = 'FilterScreen';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double initailSliderValue = 10;
  int ratingValue = 4;
  int activeButtonValue = 1;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filter',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xff222455),
          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0xff222455),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 6,
              width: width,
              alignment: Alignment.bottomCenter,
              child: Text(
                'Select Category',
                style: TextStyle(
                  color: Color(0xff222455),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: height * 0.03),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      child: Text('Italian'),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    RaisedButton(
                      child: Text('Chinese'),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    RaisedButton(
                      child: Text('Maxican'),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      child: Text('Thai'),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    RaisedButton(
                      child: Text('Arabian'),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    RaisedButton(
                      child: Text('Indian'),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      child: Text('American'),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    RaisedButton(
                      child: Text('Korean'),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    RaisedButton(
                      child: Text('European'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            Text(
              'Distance',
              style: TextStyle(
                color: Color(0xff222455),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.06),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Color(0xff6e7faa),
                activeTrackColor: Color(0xff5663ff),
                trackHeight: 8,
                valueIndicatorColor: Color(0xff5663ff),
                showValueIndicator: ShowValueIndicator.onlyForContinuous,
                valueIndicatorTextStyle: TextStyle(color: Colors.blue),
                thumbColor: Color(0xff5663ff),
                thumbShape: RetroSliderThumbShape(thumbRadius: 0),
              ),
              child: Slider(
                min: 0,
                max: 100,
                value: initailSliderValue,
                onChanged: (value) {
                  setState(() {
                    initailSliderValue = value;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 24),
                  child: Text(
                    '0',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 24),
                  child: Text(
                    '100',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButton(
                  child: Text('Reset'),
                  onPressed: () {},
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                OutlineButton(
                  child: Text('Apply'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

int calculateOffset(String value) {
  if (value.length == 1) {
    return 4;
  } else if (value.length == 2) {
    return 8;
  } else {
    return 12;
  }
}
