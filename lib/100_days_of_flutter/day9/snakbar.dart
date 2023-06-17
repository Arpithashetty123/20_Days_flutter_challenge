import 'package:flutter/material.dart';
class FlutterDaynine extends StatelessWidget {
const FlutterDaynine({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              //This is By using snack Bar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: const Text("This is  a snack bar"),
                action: SnackBarAction(label: "Done", onPressed: () {
                },),)
              );
            }, child: const Text("Show SnackBar")),
      
            const SizedBox(height: 100,),
              //By using showModalBottomSheet
             ElevatedButton(onPressed: () {
               showModalBottomSheet(
                isScrollControlled: true,
                context: context, builder: (context) {
                 return SizedBox(
                  height: 150,
                   child: ListView(children: const [
                     ListTile(
                       leading: Icon(Icons.link),
                       title: Text("Copy Link")
                     ),
                     ListTile(
                       leading: Icon(Icons.share),
                       title: Text("Share")
                     ),
                     ListTile(
                       leading: Icon(Icons.delete),
                       title: Text("Remove From List")
                     ),
                   ],),
                 );
               },);
             }, child: const Text("Bottomsheet"))
      
          ],
        ),
      ),

    );
  }
}
