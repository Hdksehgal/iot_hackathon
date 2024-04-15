import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';

final _firebase = FirebaseAuth.instance;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _isLogin = true;
  var _enteredEmail = "";
  var _enteredPassword = "";
  final _formkey = GlobalKey<FormState>();
  // I KNOW THE CODE NEEDS TO BE OPTIMIZED TO A GREAT EXTENT AND I WILL DO IT FOR SURE
  bool _obscureText = true;
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
      } else {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
            email: _enteredEmail, password: _enteredPassword);
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
              child: Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  _isLogin ? 'Hello\nSign in!' : 'Create Your\nAccount',
                  style: const TextStyle(
                      fontSize: 30,
                      // color: Colors.white,
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
                                        Icons.mail_outline,
                                        color: Colors.grey,
                                      ),
                                      label: Text(
                                        'Email',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: mainFrameColor5,
                                        ),
                                      )),
                                  style: const TextStyle(
                                    color: Colors.black54,
                                  ),
                                  validator: (value) {
                                    if (value == null ||
                                        value.trim().length < 4) {
                                      return "enter the email between of length 4 to 50";
                                    }
                                    if (!value.trim().contains("@")) {
                                      return "enter a valid email id";
                                    }
                                  },
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.emailAddress,
                                  onSaved: (value) {
                                    _enteredEmail = value!;
                                  },
                                ),
                                TextFormField(
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _obscureText
                                              ? Icons.visibility_off_outlined
                                              : Icons.visibility_outlined,
                                        ),
                                        color: Colors.black54,
                                        onPressed: () {
                                          setState(() {
                                            _obscureText = !_obscureText;
                                          });
                                        },
                                      ),
                                      label: Text(
                                        _isLogin ? 'Password' : 'Set Password',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: mainFrameColor5,
                                        ),
                                      )),
                                  style: const TextStyle(color: Colors.black54),
                                  validator: (value) {
                                    if (value == null ||
                                        value.trim().length < 8) {
                                      return "password length should be atleast 8";
                                    }
                                    if (value.contains(" ")) {
                                      return "password should not contain whitespaces";
                                    }
                                    if (!value
                                        .trim()
                                        .contains(RegExp(r'[1-9]'))) {
                                      return "Try including some numbers in your password";
                                    }
                                  },
                                  onSaved: (value) {
                                    _enteredPassword = value!;
                                  },
                                  textCapitalization: TextCapitalization.none,
                                  // obscureText: true,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                // const Align(
                                //   alignment: Alignment.centerRight,
                                //   child: Text(
                                //     'Forgot Password?',
                                //     style: TextStyle(
                                //       fontWeight: FontWeight.bold,
                                //       fontSize: 17,
                                //       color: Color(0xff281537),
                                //     ),
                                //   ),
                                // ),
                                const SizedBox(
                                  height: 70,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _submit();
                                    setState(() {
                                      _isLogin = !_isLogin;
                                    });
                                  },
                                  child: Container(
                                    height: 55,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      gradient: const LinearGradient(colors: [
                                        mainFrameColor2,
                                        mainFrameColor4,
                                      ]),
                                    ),
                                    child: Center(
                                      child: Text(
                                        _isLogin ? "SIGN IN" : "SIGN UP",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 150,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        _isLogin
                                            ? "Don't have account?"
                                            : "Already have an account",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                      GestureDetector(
                                        child: Text(
                                          _isLogin ? "Sign up" : "Sign in",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.black),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _isLogin = !_isLogin;
                                          });
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
                    ))),
          ],
        ));
  }
}
