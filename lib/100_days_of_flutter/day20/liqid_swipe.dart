import 'package:flutter/material.dart';
class LiqidSwipe extends StatefulWidget {
  const LiqidSwipe({super.key});

  @override
  State<LiqidSwipe> createState() => _LiqidSwipeState();
}

class _LiqidSwipeState extends State<LiqidSwipe> {
  final pages = [
   Container(),
   Container(),
   Container(),
 ];
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: LiqidSwipe(
        ),
    );
  }
}