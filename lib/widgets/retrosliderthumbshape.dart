import 'package:angadi/screens/filter_screen.dart';
import 'package:flutter/material.dart';

class RetroSliderThumbShape extends SliderComponentShape {
  final double thumbRadius;

  const RetroSliderThumbShape({
    this.thumbRadius = 6.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double> activationAnimation,
    Animation<double> enableAnimation,
    bool isDiscrete,
    TextPainter labelPainter,
    RenderBox parentBox,
    SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
    double textScaleFactor,
    Size sizeWithOverflow,
  }) {
    String sliderValue = (value * 100).toInt().toString();
    final Canvas canvas = context.canvas;
    final paint = Paint()
      ..style = PaintingStyle.fill
//      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..color = Color(0xff5663ff);
//labelPainter.text ="kk";

    final borderPaint = Paint()
      ..color = Color(0xff6e7faa)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(center.dx, center.dy);

    var width = 28;
    var midWidth = width / 2;
    var height = 50;
    var midHeight = height / 2;
    var crown = 84;
    var midCrown = crown - crown / 5;

    //open legs of thumb
    path.lineTo(center.dx - midWidth, center.dy - midHeight);

    //startPoint1 for bezier curve
    //path.moveTo(center.dx - midWidth, center.dy - midHeight);
    var endPoint1 = Offset(center.dx - midWidth, center.dy - midCrown);
    var controlPoint1 = Offset(center.dx - width, center.dy - height);
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);

//    //startPoint2 for bezier curve
//    path.moveTo(center.dx - midWidth ,center.dy- midCrown);
    var endPoint2 = Offset(center.dx + midWidth, center.dy - midCrown);
    var controlPoint2 = Offset(center.dx, center.dy - crown);
    path.quadraticBezierTo(
        controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);

    //startPoint3 for bezier curve
//    path.moveTo(center.dx + midWidth , center.dy - midCrown);
    var endPoint3 = Offset(center.dx + midWidth, center.dy - midHeight);
    var controlPoint3 = Offset(center.dx + width, center.dy - height);
    path.quadraticBezierTo(
        controlPoint3.dx, controlPoint3.dy, endPoint3.dx, endPoint3.dy);

    path.lineTo(center.dx, center.dy);
    canvas.drawPath(path, paint);
    canvas.drawPath(path, borderPaint);

    TextSpan span = TextSpan(
      style: TextStyle(color: Colors.white),
      text: sliderValue,
    );
    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(
        canvas,
        Offset(
            center.dx - calculateOffset(sliderValue), center.dy - height - 4));
  }
}
