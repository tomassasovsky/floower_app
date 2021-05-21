import 'package:flutter/material.dart';

class CurvedHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: _CurvedHeaderPainter(size)),
          CustomPaint(painter: _CurvedHeaderPainter2(size)),
        ],
      ),
    );
  }
}

class _CurvedHeaderPainter extends CustomPainter {
  final size;

  _CurvedHeaderPainter(this.size);

  @override
  void paint(Canvas canvas, _) {
    final paint = Paint();

    // properties
    paint.color = Color(0xff615aab);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    // draw with path and paint
    path.lineTo(0, size.height * .2);
    path.quadraticBezierTo(size.width * .3, size.height * .25, size.width, size.height * .25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _CurvedHeaderPainter2 extends CustomPainter {
  final size;

  _CurvedHeaderPainter2(this.size);
  @override
  void paint(Canvas canvas, _) {
    final paint = Paint();

    // properties
    paint.color = Color(0xffa740ab);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    // draw with path and paint
    path.lineTo(0, size.height * .05);
    path.quadraticBezierTo(size.width * .2, size.height * .2, size.width, size.height * .35);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
