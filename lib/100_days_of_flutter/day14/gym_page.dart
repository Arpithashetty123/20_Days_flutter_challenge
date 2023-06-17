import 'package:flutter/material.dart';
import 'package:flutter_application_1/100_days_of_flutter/day5/Textproperty.dart';
import 'package:google_fonts/google_fonts.dart';
class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assests/images/emma.jpg"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Today",
                style: GoogleFonts.podkova(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 150,
                child: ListView.separated(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 137, 178, 248),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                colors: [
                                  Colors.black.withOpacity(.3),
                                  Colors.black.withOpacity(.2),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 10,
                            child: Text(
                              "Steps",
                              style: subHeading(),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 10,
                            child: Text(
                              "3500",
                              style: subHeading(),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Health categories",
                style: GoogleFonts.podkova(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 400, 
                child: ListView.builder(
                  itemCount: 20,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: 50,
                        width: 600,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 187, 181, 234),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const ListTile(
                          leading: Text("Activity"),
                          trailing: Icon(Icons.check_box_outline_blank),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
