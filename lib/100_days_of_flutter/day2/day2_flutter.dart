import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FlutterDayTwo extends StatefulWidget {
  FlutterDayTwo({Key? key});

  @override
  State<FlutterDayTwo> createState() => _FlutterDayTwoState();
}

class _FlutterDayTwoState extends State<FlutterDayTwo>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _animation;

  void _onScroll() {}

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView(
        controller: _pageController,
        children: [
          mainpage(_animationController,_animation),
          mainpage(_animationController, _animation),
          mainpage(_animationController, _animation),
        ],
      ),
    );
  }
}

Widget mainpage(
  AnimationController animationController,
  Animation<double> animation,
) {
  return AnimatedBuilder(
    animation: animationController,
    builder: (BuildContext context, Widget? child) {
      return Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assests/images/day2_1.jpg"),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: const [0.3, 0.9],
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.3),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 350 - (100 * animation.value),
            left: 20,
            child: Text(
              "Yosemite",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40,
                letterSpacing: 1.0,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 400 - (100 * animation.value),
            child: Text(
              "National Park",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 45,
                letterSpacing: 1.0,
              ),
            ),
          ),
          Positioned(
            top: 460 - (100 * animation.value),
            left: 20,
            child: Row(
              children: [
                RatingBar.builder(
                  initialRating: 4.0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 30.0,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(width: 10),
                Text(
                  '4.0 (15)',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 500 - (100 * animation.value),
            child: Container(
              width: 500,
              child: Text(
                "Not just a great valley, but a shrine to human foresight, the strength of granite, the power of glaciers, the persistence of life, and the tranquility of the High Sierra. First protected in 1864, Yosemite National Park is best known for its waterfalls, but within its nearly 1,200 square miles, you can find deep valleys, grand meadows, ancient giant sequoias, a vast wilderness area, and much more. and the tranquility of the High Sierra. First protected in 1864, Yosemite National Park is best known for its waterfalls",
                maxLines: null,
                style: GoogleFonts.habibi(
                  color: Colors.white,
                  fontSize: 15,
                  letterSpacing: 1.0,
                  height: 1.6,
                ),
              ),
            ),
          ),
          Positioned(
            top: 730-(100*animation.value),
            left: 8,
            child: ElevatedButton(style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.black) ),
              onPressed: () {
              
            }, child: Text("Read More")),
          )
        ],
      );
    },
  );
}
