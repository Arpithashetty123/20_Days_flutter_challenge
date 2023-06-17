import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class ConcentricPage extends StatelessWidget {
  // FLUTTER ANIMATIONS
  ConcentricPage({super.key});
   List<dynamic> pages=[
     {
      "images":"https://fastly.picsum.photos/id/38/1280/960.jpg?hmac=HBrgyJHQOGVicaWoXgvdSfTakkAyv4BxAt4rF0DhWkU"
     },
     {
      "images":"https://fastly.picsum.photos/id/47/4272/2848.jpg?hmac=G8dXSLa-ngBieraQt5EORu-4r6tveX3fhvBTZM0Y8xM"
     },
     {
      "images":"https://fastly.picsum.photos/id/54/3264/2176.jpg?hmac=blh020fMeJ5Ru0p-fmXUaOAeYnxpOPHnhJojpzPLN3g"
     }
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        radius: 30,
        verticalPosition: 0.83,
        itemBuilder: (index) {
        int pageIndex=(index % pages.length);
        return Container(
          height: 50,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(pages[pageIndex]["images"] ,width: 200,)
            ]),
          
        );
      }, colors:[Colors.blueAccent,Colors.purple,Colors.redAccent]),
);
}
}