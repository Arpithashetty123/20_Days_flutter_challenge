import 'package:flutter/material.dart';
import 'package:flutter_application_1/100_days_of_flutter/day5/Textproperty.dart';
import 'package:google_fonts/google_fonts.dart';
import 'gym_page.dart';
class AnimationPageGym extends StatefulWidget {
  const AnimationPageGym({super.key});
  @override
  State<AnimationPageGym> createState() => _AnimationPageGymState();
}
class _AnimationPageGymState extends State<AnimationPageGym> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Container(
    height: double.infinity,
    width: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage("assests/images/gym.jpg")),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: const [0.3, 0.9],
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.2),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 100,
            left: 20,
            child: Text("Exercise 1", style: Mainheading()),
          ),
          const Positioned(
            top: 250,
            left: 20,
            child:  Text("15",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber,fontSize: 50),)),
            Positioned(
              top: 300,
            left: 20,
              child: Text("Minutes",style: subHeading(),)),
              const Positioned(
            bottom: 300,
            left: 20,
            child:  Text("3",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber,fontSize: 50),)),
            Positioned(
              bottom:280,
            left: 20,
              child: Text("Exercise",style: subHeading(),)),
                Positioned(
              bottom:150,
            left: 120,
              child: Text("start the morning\nwith your health",style:GoogleFonts.podkova(fontWeight: FontWeight.bold,fontSize: 30,letterSpacing: 2,color: Colors.white),)),
               Positioned(
                bottom: 50,
                left: 230,
                 child: GestureDetector(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const DashBoardPage() ,));
                  },
                   child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                    ),
                    child: const Icon(Icons.bubble_chart),
                   ),
                 ),
               ),
        ],
      ),
    ),
  ),
);
  }
}
