import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'display_page.dart';
class FlutterDayThree extends StatefulWidget {
  const FlutterDayThree({super.key, });

  @override
  State<FlutterDayThree> createState() => _FlutterDayThreeState();
}
class _FlutterDayThreeState extends State<FlutterDayThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                      
                        image:  DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assests/images/food2.png")
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient:  LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: const [0.3, 0.9],
                            colors: [
                             Colors.black.withOpacity(.8),
                             Colors.black.withOpacity(.2)
                            ],
                          ),
                        ),
                       child:  Stack(
                        children: [
                          const Positioned(
                          top: 250,
                          left: 20,
                            child: Text("Taking Order\nFor Faster\nDelivery",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 55,height: 1.2,letterSpacing: 2.0),)),
                             const Positioned(top: 470,
                          left: 20,
                            child: Text("See Resturants nearby by\nadding Your Location ",style: TextStyle(color: Colors.white60,fontSize: 18,letterSpacing: 1.0,height: 1.2),)),
                          Positioned(
                            bottom: 90,
                            left: 20,
                            child: GestureDetector(
                              onTap: () {
                                 Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePageDay3()),);
                              },
                              child: Container(
                                height: 55,
                                width: 450,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                      stops: const [0.4, 0.9],
                                    colors: [
                                       const Color.fromARGB(255, 255, 209, 72),
                                      Colors.amber.shade700.withOpacity(.8)
                                    ])
                                ),
                                child: Center(child: Text("Start",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            left: 120,
                            child: Text("Now Deliver to your door 24/7",style: TextStyle(color: Colors.white60,fontSize: 16),)),
                        ],
                       ),
    )));
  }
}
