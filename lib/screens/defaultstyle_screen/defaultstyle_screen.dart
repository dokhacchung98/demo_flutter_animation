import 'package:flutter/material.dart';

class DefaultStyleScreen extends StatefulWidget {
  const DefaultStyleScreen({Key? key}) : super(key: key);

  @override
  State<DefaultStyleScreen> createState() => _DefaultStyleScreenState();
}

class _DefaultStyleScreenState extends State<DefaultStyleScreen> {
  double _valueOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Default Style animation'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AnimatedDefaultTextStyle(
                style: TextStyle(
                  fontSize: _valueOpacity == 1 ? 20 : 40,
                  fontWeight:
                      _valueOpacity == 1 ? FontWeight.w700 : FontWeight.w300,
                  color: _valueOpacity == 1 ? Colors.blueAccent : Colors.red,
                ),
                duration: const Duration(milliseconds: 500),
                child: const Text(
                  'DAY LA TEXT CHU KO CO GI',
                  textAlign: TextAlign.center,
                ),
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
