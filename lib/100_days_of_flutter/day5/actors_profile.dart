import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'Textproperty.dart';
import 'faded_animation.dart';
import 'list.dart';

class FlutterDayFive extends StatefulWidget {
  const FlutterDayFive({super.key});
  @override
  State<FlutterDayFive> createState() => _FlutterDayFiveState();
}

class _FlutterDayFiveState extends State<FlutterDayFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                  expandedHeight: 460,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                      background: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assests/images/emma.jpg'),
                                fit: BoxFit.cover)),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                Colors.black,
                                Colors.black.withOpacity(.3)
                              ])),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FadeAnimation(
                                    1,
                                    Text(
                                      "Emma Waston",
                                      style: Mainheading(),
                                    )),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    FadeAnimation(
                                      1.2,
                                      Text("60 Videos", style: paragraph()),
                                    ),
                                    const SizedBox(
                                      width: 100,
                                    ),
                                    FadeAnimation(
                                        1.3,
                                        Text("240K Subscribers ",
                                            style: paragraph()))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ))),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      FadeAnimation(
                        1.4,
                        Text(
                            "Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where    she attended the Dragon School.",
                            maxLines: null,
                            style: paragraph()),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      FadeAnimation(
                        1.5,
                        Text("Born", style: subHeading()),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      FadeAnimation(
                          1.6,
                          Text("April, 15th 1990,Paris,France",
                              style: paragraph())),
                      const SizedBox(
                        height: 15,
                      ),
                      FadeAnimation(
                        1.7,
                        Text("Nationality", style: subHeading()),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      FadeAnimation(1.7, Text("British", style: paragraph())),
                      const SizedBox(
                        height: 16,
                      ),
                      FadeAnimation(1.8, Text("videos", style: subHeading())),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                          1.9,
                          SizedBox(
                              height: 200,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: emmaImages.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Stack(
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  emmaImages[index])),
                                          Container(
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomRight,
                                                    colors: [
                                                  Colors.black.withOpacity(.9),
                                                  Colors.black.withOpacity(.3)
                                                ])),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 100, top: 100),
                                            child: Icon(
                                              FontAwesome5.play_circle,
                                              size: 50,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ]))
            ],
          ),
          Positioned(
            bottom: 10,
            left: 30,
            child: Container(
              height: 55,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      stops: const [
                        0.4,
                        0.9
                      ],
                      colors: [
                        const Color.fromARGB(255, 255, 209, 72),
                        Colors.amber.shade700.withOpacity(.8)
                      ])),
              child: Center(
                  child: Text(
                "Follow",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
