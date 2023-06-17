import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
class Homeservice extends StatefulWidget {
  const Homeservice({super.key});
  @override
  State<Homeservice> createState() => _HomeserviceState();
}
class _HomeserviceState extends State<Homeservice> {
  final bool onEditing=false;
  late final String code;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(children: [
        VerificationCode(
    textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
    keyboardType: TextInputType.number,
    underlineColor: const Color.fromARGB(255, 19, 19, 19), 
    length: 6,
    cursorColor: const Color.fromARGB(255, 12, 13, 13), 
    clearAll: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'clear all',
        style: TextStyle(fontSize: 14.0, decoration: TextDecoration.underline, color: Colors.blue[700]),
      ),
    ),
    onCompleted: (String value) {
      setState(() {
        code = value;
      });
    },
    onEditing: (bool value) {
      setState(() {
      });
      if (!onEditing) FocusScope.of(context).unfocus();
    },
  ),
      ],),
    );
  }
}