import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/Signin.dart';
import 'package:flutter_login/home.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final TextEditingController mobilenumber = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController fullname = TextEditingController();
  final TextEditingController city = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signin()),
                            );
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            radius: 15,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          )),
                      const SizedBox(
                        height: 100,
                      ),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
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
                        'Welcome to you',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Mobile Number',
                        style: TextStyle(
                            color: Colors.blue,
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
                      const Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter Email Address',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Full Name',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter full name',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'City',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Select City',
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
                              onPressed: () async {
                                try {
                                  final userCredential =
                                      await _auth.signInWithEmailLink(
                                          email: email.text,
                                          emailLink: fullname.text);
                                  if (userCredential.user != null) {
                                    if (context.mounted) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Homescreen()));
                                    }
                                  }
                                } catch (e) {
                                  print('User name and password not valid');
                                }
                              },
                              child: const Text(
                                'SUBMIT',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ))),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'By registering with Mojo, you agree to our ',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: 'Term of Use',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: ' and our ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.w500),
                          ),
                        ])),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: 'I have an account? ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500)),
                        ])),
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signin()));
                          },
                          child: const Text('Signin',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.red)),
                        ),
                      )
                    ])))));
  }
}
