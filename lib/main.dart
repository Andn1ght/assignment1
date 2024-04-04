import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import 'package:flutter_villains/villain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wave & Villains Demo')),
      body: Stack(
        children: <Widget>[
          Villain(
            villainAnimation: VillainAnimation.fade(
              from: Duration(milliseconds: 0),
              to: Duration(milliseconds: 1000),
            ),
            child: WaveWidget(
              config: CustomConfig(
                gradients: [
                  [Colors.red, Color(0xEEF44336)],
                  [Colors.red[800]!, Color(0x77E57373)],
                  [Colors.orange, Color(0x66FF9800)],
                  [Colors.yellow, Color(0x55FFEB3B)]
                ],
                durations: [35000, 19440, 10800, 6000],
                heightPercentages: [0.20, 0.23, 0.25, 0.30],
                blur: MaskFilter.blur(BlurStyle.solid, 10),
              ),
              waveAmplitude: 0,
              size: Size(double.infinity, double.infinity),
            ),
          ),
          Villain(
            villainAnimation: VillainAnimation.fromBottom(
              relativeOffset: 0.4,
              from: Duration(milliseconds: 500),
              to: Duration(milliseconds: 1000),
            ),
            child: Center(
              child: Text(
                'Hello, World!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
