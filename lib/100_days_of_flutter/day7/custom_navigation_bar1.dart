import 'package:flutter/material.dart';

import 'custom_navigation_bar2.dart';
class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}
class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => CustomNavigationBarOption(),));
          }, child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: const Color.fromARGB(255, 155, 81, 234),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.menu
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.search
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.print,
               
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.people,
               
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
