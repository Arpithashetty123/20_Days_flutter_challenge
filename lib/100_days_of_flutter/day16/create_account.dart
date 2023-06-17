import 'package:flutter/material.dart';
import 'package:flutter_application_1/100_days_of_flutter/day13/Home_service.dart';

import 'package:google_fonts/google_fonts.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool isvisible = false;
  bool isPasswdeight = false;
  bool isContainNumb = false;
  bool isContainSpecialChar = false;
  bool isUpperCase=false;
  final TextEditingController _passwordController=TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Create Your Account",
          style: GoogleFonts.podkova(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Set a password",
              style: GoogleFonts.podkova(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Please create a secured account including the \nfollowing credentials",
              style: GoogleFonts.podkova(fontSize: 18, height: 2.0),
            ),
            const SizedBox(
              height: 28,
            ),
            SizedBox(
              width: 450,
              child: TextField(
                controller: _passwordController,
                obscureText: !isvisible,
                onChanged: (value) {
                  setState(() {
                    isPasswdeight = value.length >= 8;
                    isContainNumb = containsNumber(value);
                    isContainSpecialChar = containsSpecialCharacter(value);
                    isUpperCase=containsUpperCase(value);
                  });
                },
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  focusColor: Colors.black,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isvisible = !isvisible;
                      });
                    },
                    icon: isvisible ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                  ),
                  suffixIconColor: Colors.black,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: isPasswdeight ? const Icon(Icons.radio_button_checked, color: Colors.green) : const Icon(Icons.radio_button_off),
              ),
              title: const Text("Contains at least 8 Characters"),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: isContainNumb ? const Icon(Icons.radio_button_checked, color: Colors.green) : const Icon(Icons.radio_button_off),
              ),
              title: const Text("Contains at least 1 Number"),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: isContainSpecialChar ? const Icon(Icons.radio_button_checked, color: Colors.green) : const Icon(Icons.radio_button_off),
              ),
              title: const Text("Contains at least 1 Special Character"),
            ),
             ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: isUpperCase ? const Icon(Icons.radio_button_checked, color: Colors.green) : const Icon(Icons.radio_button_off),
              ),
              title: const Text("Contains at least 1 upper Case Letter"),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  if (isPasswdeight && isContainNumb && isContainSpecialChar && isUpperCase) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Homeservice();
                    },));
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Invalid Password"),
                        content: const Text(
                          "Please make sure your password contains at least 8 characters, 1 number, and 1 special character.",
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("OK"),
                          ),
                        ]));


                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return Homeservice();
                  // },));
                  }},
                child: const Text(
                  "Create Account",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool containsNumber(String value) {
    final regex = RegExp(r'[0-9]');
    return regex.hasMatch(value);
  }

  bool containsSpecialCharacter(String value) {
    final regex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    return regex.hasMatch(value);
  }
  
  bool containsUpperCase(String value) {
    final regex = RegExp(r'[A-Z]');
    return regex.hasMatch(value);
  }
}
