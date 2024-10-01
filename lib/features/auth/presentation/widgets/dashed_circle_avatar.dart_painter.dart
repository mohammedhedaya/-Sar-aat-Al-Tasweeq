import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';

class DashedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    var dashWidth = 5.0;
    var dashSpace = 5.0;
    var radius = size.width / 2;
    var center = Offset(size.width / 2, size.height / 2);
    var circumference = 2 * 3.141592653589793 * radius;

    for (double i = 0; i < circumference; i += dashWidth + dashSpace) {
      double startX = radius * cos(i / radius) + center.dx;
      double startY = radius * sin(i / radius) + center.dy;
      double endX = radius * cos((i + dashWidth) / radius) + center.dx;
      double endY = radius * sin((i + dashWidth) / radius) + center.dy;
      canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class LightDashedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.blueLight
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    var dashWidth = 5.0;
    var dashSpace = 5.0;
    var radius = size.width / 2;
    var center = Offset(size.width / 2, size.height / 2);
    var circumference = 2 * 3.141592653589793 * radius;

    for (double i = 0; i < circumference; i += dashWidth + dashSpace) {
      double startX = radius * cos(i / radius) + center.dx;
      double startY = radius * sin(i / radius) + center.dy;
      double endX = radius * cos((i + dashWidth) / radius) + center.dx;
      double endY = radius * sin((i + dashWidth) / radius) + center.dy;
      canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
