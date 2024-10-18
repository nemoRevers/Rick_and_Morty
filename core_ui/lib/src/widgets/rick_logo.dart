import 'package:flutter/material.dart';

class RickLogo extends StatelessWidget {
  const RickLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(48, 48),
      painter: RPSCustomPainter(),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(47, 19);
    path_0.lineTo(45.5, 19);
    path_0.cubicTo(45.3, 19, 45.1, 19, 44.9, 19);
    path_0.cubicTo(42.1, 19, 40.4, 18.5, 39.3, 18.2);
    path_0.cubicTo(39.8, 16.5, 41.199999999999996, 13.299999999999999,
        43.099999999999994, 10.799999999999999);
    path_0.lineTo(44.099999999999994, 9.499999999999998);
    path_0.lineTo(42.49999999999999, 9.199999999999998);
    path_0.cubicTo(41.5, 9.1, 40.6, 9, 39.6, 9);
    path_0.cubicTo(37.300000000000004, 9, 35, 9.2, 33.7, 9.6);
    path_0.cubicTo(33.6, 8.3, 33, 5.8, 33, 3);
    path_0.lineTo(33, 2);
    path_0.lineTo(32, 2);
    path_0.cubicTo(29.5, 2, 25.7, 4.8, 24.1, 6);
    path_0.cubicTo(22.400000000000002, 4.4, 18.5, 0.9000000000000004, 16.1,
        0.9000000000000004);
    path_0.lineTo(16, 1);
    path_0.lineTo(15, 1);
    path_0.lineTo(15, 2);
    path_0.cubicTo(15, 5.1, 14.5, 7.7, 14.2, 9);
    path_0.cubicTo(12.7, 8.9, 9.7, 9, 6.3999999999999995, 8.3);
    path_0.lineTo(5, 8);
    path_0.lineTo(5.2, 9.4);
    path_0.cubicTo(5.9, 13.7, 7.4, 16.8, 8.4, 18.4);
    path_0.cubicTo(6.800000000000001, 18.9, 4.800000000000001,
        20.099999999999998, 2, 22.2);
    path_0.lineTo(1, 23.1);
    path_0.lineTo(2.1, 23.900000000000002);
    path_0.cubicTo(3.7, 25.000000000000004, 4.800000000000001, 25.8, 5.7,
        26.400000000000002);
    path_0.cubicTo(6.7, 27.000000000000004, 6.7, 27.400000000000002, 7.5, 28.1);
    path_0.cubicTo(5.3, 30.1, 3.5, 31.200000000000003, 3.4000000000000004,
        31.200000000000003);
    path_0.lineTo(2.1, 32);
    path_0.lineTo(3.5, 32.9);
    path_0.lineTo(8, 35.5);
    path_0.cubicTo(7.9, 36.1, 7.6, 37.1, 7.3, 39.4);
    path_0.lineTo(7, 41);
    path_0.cubicTo(7, 41, 13, 40, 16, 38);
    path_0.lineTo(32, 38);
    path_0.cubicTo(32.9, 38.4, 36, 41, 38.8, 41);
    path_0.lineTo(40, 41);
    path_0.lineTo(39.7, 39.8);
    path_0.cubicTo(39.300000000000004, 38.099999999999994, 39.1,
        37.099999999999994, 39, 36.5);
    path_0.cubicTo(40.4, 35.6, 44.4, 33.1, 45.4, 31);
    path_0.lineTo(46, 30);
    path_0.lineTo(44.9, 29.7);
    path_0.cubicTo(43.8, 29.4, 42.3, 28.7, 41.5, 28.099999999999998);
    path_0.cubicTo(42.9, 26.799999999999997, 45.1, 24, 46.5, 20.5);
    path_0.lineTo(47, 19);
    path_0.close();

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff81d4fa).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path();
    path_1.moveTo(35, 28);
    path_1.arcToPoint(const Offset(35, 36),
        radius: const Radius.elliptical(4, 4),
        largeArc: true,
        clockwise: false);
    path_1.arcToPoint(const Offset(35, 28),
        radius: const Radius.elliptical(4, 4),
        largeArc: true,
        clockwise: false);
    path_1.close();
    path_1.moveTo(13, 28);
    path_1.arcToPoint(const Offset(13, 36),
        radius: const Radius.elliptical(4, 4),
        largeArc: true,
        clockwise: false);
    path_1.arcToPoint(const Offset(13, 28),
        radius: const Radius.elliptical(4, 4),
        largeArc: true,
        clockwise: false);
    path_1.close();

    final Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffbcaaa4).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path();
    path_2.moveTo(24, 11);
    path_2.cubicTo(17.9, 11, 13, 16.4, 13, 24.2);
    path_2.lineTo(13, 33.7);
    path_2.cubicTo(13, 41.6, 17.9, 47, 24, 47);
    path_2.cubicTo(30.1, 47, 35, 41.6, 35, 33.8);
    path_2.lineTo(35, 24.299999999999997);
    path_2.cubicTo(35, 16.4, 30.1, 11, 24, 11);
    path_2.close();

    final Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffd7ccc8).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    final Path path_3 = Path();
    path_3.moveTo(25.1, 37);
    path_3.lineTo(19.8, 37);
    path_3.lineTo(19, 37);
    path_3.lineTo(19, 37.9);
    path_3.cubicTo(19, 39.1, 19.5, 40.4, 20.6, 40.6);
    path_3.cubicTo(20.700000000000003, 41.800000000000004, 21.3, 43, 22.5, 43);
    path_3.cubicTo(23.7, 43, 24.3, 41.8, 24.5, 40.6);
    path_3.cubicTo(25.2, 40.4, 26, 39.7, 26, 37.9);
    path_3.lineTo(26, 37);
    path_3.lineTo(25.1, 37);
    path_3.close();

    final Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff43a047).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    final Path path_4 = Path();
    path_4.moveTo(17, 39);
    path_4.cubicTo(16.6, 39, 16.2, 38.7, 16.1, 38.3);
    path_4.cubicTo(15.900000000000002, 37.8, 16.200000000000003,
        37.199999999999996, 16.700000000000003, 37);
    path_4.cubicTo(16.800000000000004, 37, 19.900000000000002, 35.9,
        24.000000000000004, 35.9);
    path_4.cubicTo(
        28.1, 35.9, 31.200000000000003, 36.9, 31.300000000000004, 37);
    path_4.cubicTo(
        31.800000000000004, 37.2, 32.1, 37.7, 31.900000000000006, 38.3);
    path_4.cubicTo(31.700000000000006, 38.8, 31.200000000000006,
        39.099999999999994, 30.600000000000005, 38.9);
    path_4.cubicTo(30.600000000000005, 38.9, 27.700000000000006, 38,
        23.900000000000006, 38);
    path_4.cubicTo(20.100000000000005, 38, 17.200000000000006, 38.9,
        17.200000000000006, 38.9);
    path_4.cubicTo(17.2, 39, 17.1, 39, 17, 39);
    path_4.close();

    final Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff8d6e63).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    final Path path_5 = Path();
    path_5.moveTo(22, 26);
    path_5.lineTo(22, 30.5);
    path_5.cubicTo(22, 31.6, 22.1, 35, 24, 35);
    path_5.cubicTo(25.9, 35, 26, 31.6, 26, 30.5);
    path_5.lineTo(26, 26);
    path_5.lineTo(22, 26);
    path_5.close();

    final Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xffefebe9).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    final Path path_6 = Path();
    path_6.moveTo(28.5, 21);
    path_6.arcToPoint(const Offset(28.5, 30),
        radius: const Radius.elliptical(4.5, 4.5),
        largeArc: true,
        clockwise: false);
    path_6.arcToPoint(const Offset(28.5, 21),
        radius: const Radius.elliptical(4.5, 4.5),
        largeArc: true,
        clockwise: false);
    path_6.close();

    final Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xfffafafa).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    final Path path_7 = Path();
    path_7.moveTo(19.5, 21);
    path_7.arcToPoint(const Offset(19.5, 30),
        radius: const Radius.elliptical(4.5, 4.5),
        largeArc: true,
        clockwise: false);
    path_7.arcToPoint(const Offset(19.5, 21),
        radius: const Radius.elliptical(4.5, 4.5),
        largeArc: true,
        clockwise: false);
    path_7.close();

    final Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xfffafafa).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    final Path path_8 = Path();
    path_8.moveTo(29, 24);
    path_8.arcToPoint(const Offset(29, 26),
        radius: const Radius.elliptical(1, 1),
        largeArc: true,
        clockwise: false);
    path_8.arcToPoint(const Offset(29, 24),
        radius: const Radius.elliptical(1, 1),
        largeArc: true,
        clockwise: false);
    path_8.close();
    path_8.moveTo(19, 25);
    path_8.arcToPoint(const Offset(19, 27),
        radius: const Radius.elliptical(1, 1),
        largeArc: true,
        clockwise: false);
    path_8.arcToPoint(const Offset(19, 25),
        radius: const Radius.elliptical(1, 1),
        largeArc: true,
        clockwise: false);
    path_8.close();

    final Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff212121).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    final Path path_9 = Path();
    path_9.moveTo(24, 22);
    path_9.cubicTo(22.6, 22, 21.4, 21.7, 20.3, 21.4);
    path_9.cubicTo(19.8, 21.299999999999997, 19.2, 21.099999999999998, 18.8,
        21.099999999999998);
    path_9.cubicTo(
        17.2, 20.9, 16.2, 21.099999999999998, 16.2, 21.099999999999998);
    path_9.cubicTo(15.7, 21.2, 15.1, 20.9, 15, 20.4);
    path_9.cubicTo(14.9, 19.9, 15.2, 19.4, 15.7, 19.2);
    path_9.cubicTo(15.799999999999999, 19.2, 17.099999999999998, 18.9,
        19.099999999999998, 19.2);
    path_9.cubicTo(19.599999999999998, 19.3, 20.2, 19.4, 20.799999999999997,
        19.599999999999998);
    path_9.cubicTo(21.799999999999997, 19.9, 22.799999999999997,
        20.099999999999998, 23.9, 20.099999999999998);
    path_9.cubicTo(
        25, 20.099999999999998, 26, 19.799999999999997, 27, 19.599999999999998);
    path_9.cubicTo(27.6, 19.4, 28.2, 19.299999999999997, 28.7, 19.2);
    path_9.cubicTo(30.7, 18.9, 32, 19.2, 32.1, 19.2);
    path_9.cubicTo(32.6, 19.3, 33, 19.8, 32.800000000000004, 20.4);
    path_9.cubicTo(
        32.7, 20.9, 32.1, 21.2, 31.600000000000005, 21.099999999999998);
    path_9.cubicTo(31.600000000000005, 21.099999999999998, 30.600000000000005,
        20.9, 29.000000000000004, 21.099999999999998);
    path_9.cubicTo(28.600000000000005, 21.2, 28.100000000000005,
        21.299999999999997, 27.500000000000004, 21.4);
    path_9.cubicTo(26.6, 21.7, 25.4, 22, 24, 22);
    path_9.close();

    final Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff64b5f6).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
