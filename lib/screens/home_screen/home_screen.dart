import 'package:demo_flutter_animation/screens/animated_container_screen/animated_container_screen.dart';
import 'package:demo_flutter_animation/screens/defaultstyle_screen/defaultstyle_screen.dart';
import 'package:demo_flutter_animation/screens/opacity_screen/opacity_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  _goToPage(BuildContext context, int page) {
    Widget destination;
    switch (page) {
      case 0:
        destination = const OpacityScreen();
        break;
      case 1:
        destination = const AnimatedContainerScreen();
        break;
      case 2:
        destination = const DefaultStyleScreen();
        break;
      default:
        destination = const OpacityScreen();
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () => _goToPage(context, 0),
                child: const Text(
                  'Opacity',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blueAccent,
              ),
              MaterialButton(
                onPressed: () => _goToPage(context, 1),
                child: const Text(
                  'Animated container',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blueAccent,
              ),
              MaterialButton(
                onPressed: () => _goToPage(context, 2),
                child: const Text(
                  'DefaultStyleScreen',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
