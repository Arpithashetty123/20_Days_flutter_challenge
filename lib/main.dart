import 'dart:ui';
import 'package:flutter/material.dart';
import '100_days_of_flutter/day21/LinearChart.dart';
import '100_days_of_flutter/day23/winter_collection.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.deepOrange,
        textTheme: const TextTheme(
          // bodyLarge: TextStyle(
          //   color: Colors.black,
          // ),
          // bodyMedium: TextStyle(color: Colors.black),
          // bodySmall: TextStyle(color: Colors.black),
        ),
      ),
      home:const WinterCollectinPage()
    );
  }
}
