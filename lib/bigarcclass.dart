import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainArc extends CustomPainter{
  // final painterr = Paint()
  // ..color = Colors.grey
  // ..style = PaintingStyle.stroke
  // ..strokeWidth = 5;
final painterrtwo = Paint()
  ..color = Colors.blue
  ..style = PaintingStyle.stroke
  ..strokeWidth = 5;
final painterrtwoo = Paint()
  ..color = Colors.greenAccent
  ..style = PaintingStyle.stroke
  ..strokeWidth = 5;
  @override
  void paint(Canvas canvas, Size size) {

     // canvas.drawArc(
     //    Offset(size.width / 4, 350) & Size(200, 200), 2.2, 5, false, painterr);

    canvas.drawArc(Offset(size.width / 20, 20) & Size(200, 200), 2.2, 5,
        false, painterrtwo);
    canvas.drawArc(Offset(size.width / 20, 20) & Size(200, 200), 2.2, 4,
        false, painterrtwoo);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}