import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';

class myProfile extends StatelessWidget {
  const myProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
      ),
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
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 60),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: Colors.white.withOpacity(0.7),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 18, left: 18, top: 20, bottom: 20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                                "assets/images/20230221_091438.jpg")),
                        const SizedBox(height: 10),
                        Text(
                          "Name: Gaurav Kumar Biswas\nEmail: gauravbiswas123@gmail.com\nRole: Admin",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.black
                                    : Colors.black,
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: mainFrameColor4,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: mainFrameColor4,
                                ),
                              ),
                              fillColor: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.black45
                                  : Colors.transparent,
                              filled: true,
                              labelText: "Phone No.",
                              labelStyle:
                                  const TextStyle(color: mainFrameColor4)),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: mainFrameColor4,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: mainFrameColor4,
                                ),
                              ),
                              fillColor: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.black45
                                  : Colors.transparent,
                              filled: true,
                              labelText: "Address 1",
                              labelStyle:
                                  const TextStyle(color: mainFrameColor4)),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Profile Updated",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: mainFrameColor5,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
