import 'package:flutter/material.dart';
import 'button hover.dart';
class DynamicButton extends StatefulWidget {
  const DynamicButton({Key? key});
  @override
  State<DynamicButton> createState() => _DynamicButtonState();
}
class _DynamicButtonState extends State<DynamicButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Dynamic Button",style: TextStyle(color:Colors.black),),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Container(
          height: 500,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                offset: Offset.zero,
                blurRadius: 8,
                color: Colors.black54,
              ),
            ],
          ),
          child: ListView.builder(
            itemCount: 6,
         itemBuilder: (context, index) {
           return const Padding(
             padding: EdgeInsets.only(bottom: 2),
             child: ButtonHover(),
           );
         },
          ),
        ),
      ),
    );
  }
}