import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'list.dart';
class WinterCollectinPage extends StatefulWidget {
  const WinterCollectinPage({super.key});
  @override
  State<WinterCollectinPage> createState() => _WinterCollectinPageState();
}
class _WinterCollectinPageState extends State<WinterCollectinPage> {
 int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Collection",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade500,
              ),
            ),
            Text(
              "winter 2021",
              style: GoogleFonts.poppins(
                fontSize: 35,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Welcome Back",
              style: GoogleFonts.podkova(
                fontSize: 40,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 480,
              child: Stack(
                children: [
                  PageView.builder(
                    itemCount: 4,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(WinterImage[index]),
                          ),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate( 4,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentPage == index
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        side: BorderSide(color: Colors.white),
                        backgroundColor: Colors.black,
                        minimumSize: Size(100,40)
                      ),
                      onPressed: () {
                    }, child: const Text("Click here")),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
