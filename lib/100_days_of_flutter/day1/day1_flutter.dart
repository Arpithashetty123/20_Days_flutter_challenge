import 'package:flutter/material.dart';

import 'list.dart';

class FlutterDayOne extends StatefulWidget {
  const FlutterDayOne({super.key});
  @override
  State<FlutterDayOne> createState() => _FlutterDayOneState();
}
class _FlutterDayOneState extends State<FlutterDayOne> {
  String selectedImagePath = 'assests/images/photo12.jpeg';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const Drawer(
      ),
    appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.black,
      size: 30),
     backgroundColor: Colors.white,
     elevation: 0,
    ),
    body:  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25,),
                  const Text("Find Your",style: TextStyle(fontSize: 30),),
                  const SizedBox(height: 15,),
                  const Text("Inspiration",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey.shade200
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search You're looking for",
                       border: InputBorder.none
                      ),
                    ),
                  ),
                  const SizedBox(height: 50,)
                ],
              ),
            ),
          ),
           const SizedBox(height: 20,),
            Padding(
             padding: const EdgeInsets.only(left:20,right:20),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Text("Promo Today",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
                  const SizedBox(width: 50,),
                Container(
                height: 200,
                color: Colors.white,
                child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagepage.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedImagePath = imagepage[index];
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(imagepage[index]),
                ),
              );})),
                const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:AssetImage(selectedImagePath),),
                      ),
                      child:Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: const [
                                0.3,
                                0.9
                              ],
                              colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.2)
                              ]),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Best Design',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),))),

                  const SizedBox( height: 50,)

              ],
             ),
           )
        ],
      ),
    ),
    );
  }
}