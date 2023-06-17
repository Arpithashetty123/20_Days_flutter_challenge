import 'package:flutter/material.dart';
import 'package:flutter_application_1/100_days_of_flutter/day13/Home_service.dart';
import 'package:flutter_application_1/100_days_of_flutter/day5/Textproperty.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../day19/verification_page.dart';
class RegisterPhonePage extends StatefulWidget {
  const RegisterPhonePage({super.key});
  @override
  State<RegisterPhonePage> createState() => _RegisterPhonePageState();
}
class _RegisterPhonePageState extends State<RegisterPhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assests/images/phone.jpg"))),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Register",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Enter your Phone Number to continue, we will\nsend you OTP to verifivation",
            style: paragraph(),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1.0)),
            width: 400,
            child: Center(
              child: InternationalPhoneNumberInput(
                cursorColor: Colors.black,
                    formatInput: false,
                    selectorConfig: const SelectorConfig(selectorType: PhoneInputSelectorType.DROPDOWN),
                    inputDecoration:  InputDecoration(
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: Colors.grey.shade700),
                    contentPadding: const EdgeInsets.only(bottom: 20,left: 20),
                    border: InputBorder.none),
                onInputChanged: (value) {
                },
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                return VerificationPage();
              },));
            },
            child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 11, 8, 8),borderRadius: BorderRadius.circular(10)),
              
              child: Center(child: Text("Request OTP",style: subHeading(),)),
            ),
          ),
          const SizedBox(height: 10,),
         Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Already Have an Account?", style: paragraph()),
    const SizedBox(width: 5),
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Homeservice()),
        );
      },
      child: const Text(
        "Login",
        style: TextStyle(
          fontSize: 15,
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  ],
),  ],),
    );
  }
}
