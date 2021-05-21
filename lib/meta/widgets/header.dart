import 'dart:math';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: _CurvedHeaderPainter(size, theme)),
        ],
      ),
    );
  }
}

class _CurvedHeaderPainter extends CustomPainter {
  final Size size;
  final ThemeData theme;

  _CurvedHeaderPainter(this.size, this.theme);

  void _addPointsToPath(Path path, List<Point> points) {
    for (var i = 0; i < points.length - 2; i++) {
      final xc = (points[i].x + points[i + 1].x) / 2;
      final yc = (points[i].y + points[i + 1].y) / 2;
      path.quadraticBezierTo(points[i].x.toDouble(), points[i].y.toDouble(), xc, yc);
    }

    path.quadraticBezierTo(
      points[points.length - 2].x.toDouble(),
      points[points.length - 2].y.toDouble(),
      points[points.length - 1].x.toDouble(),
      points[points.length - 1].y.toDouble(),
    );
  }

  @override
  void paint(Canvas canvas, _) {
    final lightBluePaint = Paint();
    final purplePath = Path();

    final greyPaint = Paint();
    final greyPath = Path();

    final bluePaint = Paint();
    final bluePath = Path();

    final rect = Rect.fromCircle(
      center: Offset(165, 55),
      radius: 180,
    );

    //? GREY

    // properties
    greyPaint.color = theme.accentTextTheme.bodyText1!.color!.withOpacity(.54);
    greyPaint.style = PaintingStyle.fill;
    greyPaint.strokeWidth = 5;

    greyPath.lineTo(0, size.height * .4);
    _addPointsToPath(greyPath, [
      Point(size.width * .25, size.height * .48),
      Point(size.width * .55, size.height * .43),
      Point(size.width * .58, size.height * .3),
      Point(size.width * .7, size.height * .22),
      Point(size.width * .85, size.height * .18),
      Point(size.width, size.height * .16),
    ]);
    greyPath.lineTo(size.width, 0);

    //? LIGHT BLUE

    // properties
    lightBluePaint.shader = LinearGradient(
      colors: [
        Color(0xff2E8BC0),
        Color(0xff7EC8E3),
      ],
    ).createShader(rect);
    lightBluePaint.style = PaintingStyle.fill;
    lightBluePaint.strokeWidth = 5;

    // draw with path and paint
    purplePath.lineTo(0, size.height * .2);
    _addPointsToPath(purplePath, [
      Point(size.width * .13, size.height * .2),
      Point(size.width * 0.25, size.height * .07),
      Point(size.width * 0.6, size.height * .02),
      Point(size.width * 0.66, size.height * .008),
      Point(size.width * 0.67, 0),
    ]);

    //? BLUE

    // properties
    bluePaint.shader = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xff145DA0),
        Color(0xff145DA0),
        Color(0xff189AB4),
      ],
    ).createShader(rect);
    bluePaint.style = PaintingStyle.fill;
    bluePaint.strokeWidth = 5;

    // draw with path and paint
    bluePath.quadraticBezierTo(size.width * .6, size.height * .5, size.width, size.height * .5);
    bluePath.lineTo(size.width, 0);

    canvas.drawPath(bluePath, bluePaint);
    canvas.drawPath(greyPath, greyPaint);
    canvas.drawPath(purplePath, lightBluePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
