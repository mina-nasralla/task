import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/cubit/home_layout_cubit.dart';

import '../dvs.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeLayoutCubit.get(context);
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: cubit.screens[cubit.currentIndex],
          ),
          bottomNavigationBar: Stack(
            children: [
              CustomPaint(
                painter: BottomNavPainter(),
                child: Container(height: 70),
              ),
              Positioned(
                bottom: 7,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          cubit.changeBottomNavBar(0);
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.home,
                            color: cubit.currentIndex == 0 ? Colors.blue : Colors.grey,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: cubit.currentIndex == 0 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          cubit.changeBottomNavBar(1);
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.chat_outlined,
                            color: cubit.currentIndex == 1 ? Colors.blue : Colors.grey,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Chats',
                            style: TextStyle(
                              color: cubit.currentIndex == 1 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 45), // The width of the FAB
                    InkWell(
                      onTap: () {
                        setState(() {
                          cubit.changeBottomNavBar(2);
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            CupertinoIcons.heart,
                            color: cubit.currentIndex == 2 ? Colors.blue : Colors.grey,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'My ADS',
                            style: TextStyle(
                              color: cubit.currentIndex == 2 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          cubit.changeBottomNavBar(3);
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            CupertinoIcons.person,
                            color: cubit.currentIndex == 3 ? Colors.blue : Colors.grey,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Account',
                            style: TextStyle(
                              color: cubit.currentIndex == 3 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: CustomFAB(),
        );
      },
    );
  }
}

class BottomNavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 0.35, 0)
      ..quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 5)
      ..arcToPoint(Offset(size.width * 0.60, 5),
          radius: const Radius.circular(20), clockwise: false)
      ..quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
