import 'package:flutter/material.dart';

final painter = Paint()..color = Colors.white;


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


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
