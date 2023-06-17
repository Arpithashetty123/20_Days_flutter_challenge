import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ButtonHover extends StatefulWidget {
  const ButtonHover({Key? key});
  @override
  State<ButtonHover> createState() => _ButtonHoverState();
}

class _ButtonHoverState extends State<ButtonHover> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (f) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (f) {
        setState(() {
          isHover = false;
        });
      },
      child: AnimatedContainer(
        color: Color.fromARGB(255, 205, 159, 236),
        duration: const Duration(microseconds: 200),
        width: 500,
        height: isHover ? 120 : 85,
        child: ListTile(
          leading: Icon(Icons.arrow_back_ios),
          title: Text("New Widget"),
          trailing: Icon(Icons.beach_access),
        ),
      ),
    );
  }
}
