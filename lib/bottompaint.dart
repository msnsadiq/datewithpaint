import 'package:flutter/material.dart';
final painterr = Paint()..color = Colors.grey ..style = PaintingStyle.stroke
  ..strokeWidth = 5

;
final painterrtwo = Paint()..color = Colors.deepOrangeAccent ..style = PaintingStyle.stroke
  ..strokeWidth = 5

;
class BottomArc extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
   canvas.drawArc(Offset(size.width/20, 10) & Size(90, 90),2.2,5, false, painterr);
   canvas.drawArc(Offset(size.width/20, 10) & Size(90, 90),2.2,1.9, false, painterrtwo);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}