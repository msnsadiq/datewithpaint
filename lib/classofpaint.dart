import 'package:flutter/material.dart';

final painter = Paint()..color = Colors.white;
final painterr = Paint()..color = Colors.grey ..style = PaintingStyle.stroke
..strokeWidth = 5

;
final painterrtwo = Paint()..color = Colors.lightBlueAccent ..style = PaintingStyle.stroke
  ..strokeWidth = 5

;

class PaintItem extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final arc = Path();
    arc.addPolygon([
      Offset(0, size.height * .37),
      Offset(size.width, size.height * .25),
      Offset(size.width, size.height),
      Offset(0, size.height)
    ], true);
    canvas.drawPath(arc, painter);


    canvas.drawArc(Offset(size.width/4, 350) & Size(200, 200),2.2,5, false, painterr);
   // canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint)

    canvas.drawArc(Offset(size.width/4, 350) & Size(200, 200), 2.2, 4.1, false, painterrtwo);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
