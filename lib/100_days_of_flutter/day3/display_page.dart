import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'list.dart';

class HomePageDay3 extends StatefulWidget {
  const HomePageDay3({super.key});

  @override
  State<HomePageDay3> createState() => _HomePageDay3();
}

class _HomePageDay3 extends State<HomePageDay3> {
  int selectedContainerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              FontAwesome.shopping_bag,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Food Delivery",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 23),
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ItemNames.length,
                itemBuilder: (context, index) {
                  
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainerIndex = index;
                      });
                     },
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 58,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        color: index == selectedContainerIndex
                            ? const Color.fromARGB(255, 189, 124, 200)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          ItemNames[index],
                          style:  TextStyle(
                            fontSize: 18,
                             fontWeight: index == selectedContainerIndex
                                ? FontWeight.bold
                                : FontWeight.normal,
                         
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 25,),
            Text(
              "Free Delivery",
              style: GoogleFonts.poppins(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 450,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
              itemCount: Images.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      
                      setState(() {
                        selectedContainerIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 450,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image:  DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Images[index])
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient:  LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: const [0.3, 0.9],
                              colors: [
                               Colors.black.withOpacity(.8),
                               Colors.black.withOpacity(.2)
                              ],
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                bottom: 60,
                                left: 20,
                                child: Text(
                                  '\$13.00',
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 20,
                                child: Text(
                                 Types[index],
                                  style: GoogleFonts.poppins(
                                    fontSize: 23,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Entypo.heart,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}