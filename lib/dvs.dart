import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(85, 85), // Set size according to FloatingActionButton's default size
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawCircle(center, size.width * 0.3, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(70.8669, 58.7995);
    path_1.cubicTo(68.1897, 63.5735, 64.3147, 67.5676, 59.6239, 70.388);
    path_1.cubicTo(54.933, 73.2085, 49.5882, 74.758, 44.1161, 74.8838);
    path_1.cubicTo(38.6441, 75.0096, 33.2337, 73.7074, 28.4182, 71.1055);
    path_1.cubicTo(23.6027, 68.5036, 19.5483, 64.6918, 16.6545, 60.0459);
    path_1.lineTo(21.4568, 57.0547);
    path_1.cubicTo(23.8308, 60.8662, 27.1571, 63.9933, 31.1077, 66.1279);
    path_1.cubicTo(35.0583, 68.2625, 39.4969, 69.3308, 43.9861, 69.2276);
    path_1.cubicTo(48.4753, 69.1244, 52.8602, 67.8532, 56.7085, 65.5393);
    path_1.cubicTo(60.5568, 63.2254, 63.7358, 59.9488, 65.9322, 56.0322);
    path_1.lineTo(70.8669, 58.7995);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff0FA958).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(44.5017, 11.9117);
    path_2.cubicTo(49.9169, 12.1025, 55.1913, 13.6871, 59.8152, 16.5122);
    path_2.cubicTo(64.439, 19.3372, 68.2559, 23.3073, 70.897, 28.0387);
    path_2.cubicTo(73.5381, 32.77, 74.914, 38.1027, 74.8918, 43.5212);
    path_2.cubicTo(74.8696, 48.9397, 73.45, 54.2609, 70.7702, 58.9705);
    path_2.lineTo(65.8529, 56.1724);
    path_2.cubicTo(68.0513, 52.3088, 69.2159, 47.9433, 69.2341, 43.498);
    path_2.cubicTo(69.2524, 39.0527, 68.1236, 34.6778, 65.9568, 30.7963);
    path_2.cubicTo(63.7901, 26.9147, 60.6588, 23.6577, 56.8654, 21.3401);
    path_2.cubicTo(53.072, 19.0224, 48.745, 17.7225, 44.3024, 17.5659);
    path_2.lineTo(44.5017, 11.9117);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff283891).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(16.6473, 60.0344);
    path_3.cubicTo(13.617, 55.1645, 11.9738, 49.5596, 11.8951, 43.8244);
    path_3.cubicTo(11.8164, 38.0891, 13.3051, 32.4412, 16.2007, 27.49);
    path_3.cubicTo(19.0963, 22.5387, 23.2888, 18.4721, 28.326, 15.7287);
    path_3.cubicTo(33.3632, 12.9854, 39.0538, 11.6694, 44.784, 11.9229);
    path_3.lineTo(44.534, 17.5751);
    path_3.cubicTo(39.833, 17.3671, 35.1645, 18.4467, 31.032, 20.6973);
    path_3.cubicTo(26.8996, 22.948, 23.4601, 26.2842, 21.0845, 30.3462);
    path_3.cubicTo(18.709, 34.4081, 17.4877, 39.0416, 17.5522, 43.7467);
    path_3.cubicTo(17.6168, 48.4519, 18.9649, 53.0501, 21.451, 57.0453);
    path_3.lineTo(16.6473, 60.0344);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff3B77FE).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(43, 50.6667);
    path_4.lineTo(43, 37.3334);

    Paint paint4Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02298851;
    paint4Stroke.color = const Color(0xff64748B).withOpacity(1.0);
    paint4Stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path_4, paint4Stroke);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(36.3333, 44);
    path_5.lineTo(49.6667, 44);

    Paint paint5Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02298851;
    paint5Stroke.color = const Color(0xff64748B).withOpacity(1.0);
    paint5Stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path_5, paint5Stroke);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
