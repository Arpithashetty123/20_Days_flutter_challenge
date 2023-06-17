import 'package:flutter/material.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

// ignore: must_be_immutable
class FlutterDayeight extends StatelessWidget {
  FlutterDayeight({super.key});
  Gradient g1 =
      const LinearGradient(colors: [Color(0xFF7fffFF), Color(0xFFE145FF)]);
  Gradient g2 =
      const LinearGradient(colors: [Colors.purple, Colors.purpleAccent]);
  Gradient g3 = const LinearGradient(colors: [Colors.blue, Colors.blueAccent]);
  Gradient g4 = const LinearGradient(colors: [Colors.brown, Colors.blueGrey]);
  Gradient g5 = const LinearGradient(colors: [Colors.red, Colors.redAccent]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Gradient widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(children: [
          //By using Linear Progress Indicator
          const LinearProgressIndicator(
            minHeight: 10,
            value: 0.7,
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.green),
            color: Colors.amber,
          ),
          const SizedBox(
            height: 20,
          ),
          //By Using Container
          Container(
            width: double.infinity,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF2607E7),
                  Color(0xFF57C0EF),
                  Colors.grey,
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Progress Bar Indicator (Type:Animated progress bar)
          const ProgressBarAnimation(
            duration: Duration(seconds: 5),
            backgroundColor: Colors.grey,
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
          ),
          const SizedBox(
            height: 20,
          ),
          const CircularProgressIndicator(
            backgroundColor: Colors.grey,
            strokeWidth: 5,
            color: Color.fromARGB(255, 224, 96, 11),
          )
        ]),
      ),
    );
  }
}
