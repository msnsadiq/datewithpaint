import 'package:flutter/material.dart';
final painterr = Paint()..color = Colors.grey ..style = PaintingStyle.stroke
  ..strokeWidth = 5

;
class BottomArc extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
   canvas.drawArc(Offset(size.width/20, 250) & Size(90, 90),2.2,5, false, painterr);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}