import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iot_smart_street_light_app/Screens/login.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

final _firebase = FirebaseAuth.instance;

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var _isLogin = false;
  var _enteredEmail = "";
  var _enteredPassword = "";
  final _formkey = GlobalKey<FormState>();

  void _submit() async {
    final isValid = _formkey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formkey.currentState!.save();

    try {
      if (_isLogin) {
        final userCredentials = await _firebase.signInWithEmailAndPassword(
            email: _enteredEmail, password: _enteredPassword);
        print(userCredentials);
      } else {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
            email: _enteredEmail, password: _enteredPassword);
        print(userCredentials);
      }
    } on FirebaseAuthException catch (error) {
      // only exceptions of type particular type will be caught and handled
      // i.e. FirebaseAuthException
      if (error == "email-already-in-use") {}
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.message ?? "Authentication failed")));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          //thanks for watching
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  mainFrameColor2,
                  mainFrameColor5,
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Create Your\nAccount',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0, left: 10, right: 10),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white,
                  ),
                  height: double.infinity,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             TextFormField(
                              decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.check,
                                    color: Colors.grey,
                                  ),
                                  label: Text(
                                    'Email id',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: mainFrameColor5,
                                  ),
                                    ),
                                  ),
                               style: TextStyle(color: Colors.black54),
                               validator: (value){
                                 if(value == null || value.trim().length < 4 ){
                                   return "enter the username between of length 4 to 50";
                                 }
                                 if(!value.trim().contains("@")){
                                   return "enter a valid email id";
                                 }
                               },
                               onSaved: (value){
                                _enteredEmail = value!;
                               },
                              ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                  label: Text(
                                    'Password',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: mainFrameColor5,
                                    ),
                                  )),
                              style: TextStyle(color: Colors.black54),
                              validator: (value) {
                                if(value == null || value.trim().length < 8)
                                {
                                  return "password length should be atleast 8";
                                }
                                if(value.contains(" ")){
                                  return "password should not contain whitespaces";
                                }
                                if (!value
                                    .trim()
                                    .contains(RegExp(r'[0-9]'))) {
                                  return "Try including some numbers in your password";
                                }
                              },
                              onSaved: (value) {
                                _enteredPassword = value!;
                              },
                              textCapitalization: TextCapitalization.none,
                              obscureText: true,

                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            GestureDetector(
                              onTap: (){
                                _submit();
                              },
                              child: Container(
                                height: 55,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: const LinearGradient(colors: [
                                    mainFrameColor2,
                                    mainFrameColor5,
                                  ]),
                                ),
                                child: const Center(
                                  child: Text(
                                    'SIGN UP',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    "Don't have account?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  GestureDetector(
                                    child: const Text(
                                      "Sign in",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.black),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Login()));
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
