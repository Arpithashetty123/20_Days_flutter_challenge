import 'package:flutter/material.dart';
import 'package:flutter_application_1/100_days_of_flutter/day13/Home_service.dart';
import 'package:flutter_application_1/100_days_of_flutter/day5/Textproperty.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});
  @override
  State<VerificationPage> createState() => _VerificationPageState();
}
class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assests/images/email.png"))),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Verification",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Please Enter the 6 digit code sent to,\n                  +91 9606763234",
            style: paragraph(),
          ),
          const SizedBox(
            height: 10,
          ),
          VerificationCode(
            onCompleted: (value) {
              
            },
            onEditing: (value) {
              
            },
    textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
    keyboardType: TextInputType.number,
    underlineColor: const Color.fromARGB(255, 19, 19, 19), 
    length: 6,
    cursorColor: const Color.fromARGB(255, 12, 13, 13), 
        ),
           const SizedBox(height: 20,),
         Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Don't Recive the otp", style: paragraph()),
    const SizedBox(width: 5),
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Homeservice()),
        );
      },
      child: const Text(
        "Resend",
        style: TextStyle(
          fontSize: 15,
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  ],
), 
   SizedBox(height: 25,),
          GestureDetector(
            onTap: () {
            },
            child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 11, 8, 8),borderRadius: BorderRadius.circular(10)),
              
              child: Center(child: Text("Verify",style: subHeading(),)),
            ),
          ),
          ],),
    );
  }
}
