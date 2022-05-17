import 'package:flutter/material.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({Key? key}) : super(key: key);

  @override
  State<OpacityScreen> createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State<OpacityScreen> {
  double _valueOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity animation'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: _valueOpacity,
              duration: const Duration(milliseconds: 500),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: Image.network(
                        "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png"),
                  ),
                  const SizedBox(height: 12),
                  const Text("This is nothing content"),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () => setState(() {
                _valueOpacity = _valueOpacity == 0 ? 1 : 0;
              }),
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
