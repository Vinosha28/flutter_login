import 'package:flutter/material.dart';
import 'package:flutter_login/Signup.dart';
import 'package:flutter_login/login.dart';

class Signin extends StatelessWidget {
 Signin({super.key});
final TextEditingController mobilenumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 15,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            const Expanded(
                child: Center(
              child: Text(
                'Mojo',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                    fontWeight: FontWeight.w500),
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Login',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w700, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Hello there!',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 30),
            ),
            const Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Mobile Number',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: 'Mobile Number',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        side: const BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signup(),
                        ),
                      );
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ))),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: 'Dont have an account?',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500)),
              ])),
            ),
          ]),
        ),
      ),
    );
  }
}