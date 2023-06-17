import 'package:flutter/material.dart';
import 'package:flutter_application_1/100_days_of_flutter/day5/Textproperty.dart';
import 'package:google_fonts/google_fonts.dart';

class TeaPage extends StatefulWidget {
  const TeaPage({super.key,});

  @override
  _TeaPageState createState() => _TeaPageState();
}

class _TeaPageState extends State<TeaPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 195, 174),
      body: AnimatedBuilder(
        animation: _opacityAnimation,
        builder: (context, child) {
          return Opacity(
            opacity: _opacityAnimation.value,
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.network(
                      "https://cdn.dribbble.com/users/115278/screenshots/16812737/media/93914b7224e59946c61b9dbde7542628.gif",
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: TeaDescription(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TeaDescription extends StatelessWidget {
  const TeaDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Discover The Best \nOrganic Asian Tea.",
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 5),
            Text(
              "Straight From Motherland",
              style: paragraph(),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(top: 20, right: 10),
                child: Text(
                  "Explore Now",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
