import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Draw Cirlces';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: new circlePage(),

    );
  }
}
class circlePage extends StatefulWidget{
  @override
  createState() => new circlePageState();
}
class circlePageState extends State<circlePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new CustomPaint(
          size: new Size(200.0, 100.0),
          painter: new CirclePainter(10.0, 10.0, 52.0, Colors.lightGreen, 500),
        ),
      ),
     );
  }
}

class CirclePainter extends CustomPainter {
  static const barWidth = 10.0;

  CirclePainter(this.xOffset, this.yOffset, this.diameter, this.color, this.opacity);

  final double xOffset;
  final double yOffset;
  final double diameter;
  final int opacity;

  final MaterialColor color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..color = color[opacity]
      ..style = PaintingStyle.fill;
    canvas.drawCircle(
        new Offset(xOffset, yOffset)
        , diameter, paint
    );
  }

  @override
  bool shouldRepaint(CirclePainter old) => xOffset != old.xOffset;
}

