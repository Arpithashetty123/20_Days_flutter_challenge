import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../day3/list.dart';

class FlutterDayTen extends StatefulWidget {
  const FlutterDayTen({Key? key}) : super(key: key);

  @override
  _FlutterDayTenState createState() => _FlutterDayTenState();
}

class _FlutterDayTenState extends State<FlutterDayTen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: Images.length,
            itemBuilder: (context, index, realIndex) {
              return Image.asset(
                Images[index],
                fit: BoxFit.contain,
              );
            },
            options: CarouselOptions(
              height: double.infinity,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              onPageChanged: (index, _) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: Images.map((url) {
                int index = Images.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Colors.green
                        : Colors.grey.shade400,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
