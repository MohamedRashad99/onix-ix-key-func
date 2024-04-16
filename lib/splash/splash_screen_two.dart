import 'dart:async';
import 'dart:math';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1sss/key_features/view.dart';


class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2>
    with TickerProviderStateMixin {
  double _width = 100;
  double _height = 100;
  final Color _color = Colors.white;
  late AnimationController _controller;
  late Animation _animation;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration:  BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.green,
                    Colors.white70,
                    Colors.indigo.shade700,
                // MyColors.gradient1,
                // MyColors.gradient2,
                // MyColors.gradient3,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Center(
                child: AnimatedBuilder(
              animation: _controller,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.transparent,
                child: Center(
                  child: Image.asset(
                    "assets/images/ultimate.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.scale(
                  scale: _animation.value,
                  child: child,
                );
              },
            )),
          ],
        ));
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    _animation = Tween<double>(
      begin: 0,
      end: 15,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    );
    _controller.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 3),
          () {

            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => const KeyFeatures()), (
                    route) => false);
           // Get.offAll(()=>MyHomePage(data: data));
          });
    });
  }
}
