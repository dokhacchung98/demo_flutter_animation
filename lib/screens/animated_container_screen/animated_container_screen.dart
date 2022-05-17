import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _widthOfView = 300;
  double _heightOfView = 300;
  Color _colorOfView = Colors.blueAccent;
  double _borderRadiusView = 2;

  _handleRandomView() {
    var rng = new Random();
    setState(() {
      _widthOfView = rng.nextDouble() * 300;
      _heightOfView = rng.nextDouble() * 300;
      _borderRadiusView = rng.nextDouble() * 150;
      _colorOfView = Color(0xFFFFFFFF & rng.nextInt(0xFFFFFFFF));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: Center(
                child: AnimatedContainer(
                  width: _widthOfView,
                  height: _heightOfView,
                  decoration: BoxDecoration(
                    color: _colorOfView,
                    borderRadius: BorderRadius.circular(_borderRadiusView),
                  ),
                  duration: const Duration(milliseconds: 800),
                ),
              ),
            ),
            MaterialButton(
              onPressed: _handleRandomView,
              child: const Text(
                'Toggle Anim',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
