import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;
  bool _switchValue4 = false;
  Color bgColor1 = Colors.white;
  Color bgColor2 = Colors.white;
  Color bgColor3 = Colors.white;
  Color bgColor4 = Colors.white;
  String modeText1 = 'Light Mode';
  String modeText2 = 'Auto';
  String modeText3 = 'Power Up';
  String modeText4 = 'CCTV Off';

  void colorChange1() {
    setState(() {
      if (_switchValue1) {
        bgColor1 = Colors.black;
        modeText1 = 'Dark Mode';
      } else {
        bgColor1 = Colors.white;
        modeText1 = 'Light Mode';
      }
    });
  }

  void colorChange2() {
    setState(() {
      if (_switchValue2) {
        bgColor2 = Colors.black;
        modeText2 = 'Manual';
      } else {
        bgColor2 = Colors.white;
        modeText2 = 'Auto';
      }
    });
  }

  void colorChange3() {
    setState(() {
      if (_switchValue3) {
        bgColor3 = Colors.black;
        modeText3 = 'Power Cut';
      } else {
        bgColor3 = Colors.white;
        modeText3 = 'Power Up';
      }
    });
  }

  void colorChange4() {
    setState(() {
      if (_switchValue4) {
        bgColor4 = Colors.black;
        modeText4 = 'CCTV On';
      } else {
        bgColor4 = Colors.white;
        modeText4 = 'CCTV Off';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
      ),
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
            padding: const EdgeInsets.only(
                top: 150, left: 20, right: 20, bottom: 100),
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 350,
                            width: 350, // Set the height of the GridView
                            child: GridView.count(
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 20,
                                crossAxisCount: 2, // Set the number of columns
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black54),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: const Offset(2, 5),
                                              blurRadius: 10,
                                              spreadRadius: 0.8,
                                            )
                                          ],
                                          color: bgColor1),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            modeText1,
                                            style: TextStyle(
                                              color: bgColor1 == Colors.black
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SwitchListTile(
                                              value: _switchValue1,
                                              onChanged: (newValue) {
                                                setState(() {
                                                  _switchValue1 = newValue;
                                                  colorChange1();
                                                });
                                              })
                                        ],
                                      )),
                                  Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black54),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: const Offset(2, 5),
                                              blurRadius: 10,
                                              spreadRadius: 0.8,
                                            )
                                          ],
                                          color: bgColor2),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            modeText2,
                                            style: TextStyle(
                                              color: bgColor2 == Colors.black
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SwitchListTile(
                                              value: _switchValue2,
                                              onChanged: (newValue) {
                                                setState(() {
                                                  _switchValue2 = newValue;
                                                  colorChange2();
                                                });
                                              })
                                        ],
                                      )),
                                  Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black54),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: const Offset(2, 5),
                                              blurRadius: 10,
                                              spreadRadius: 0.8,
                                            )
                                          ],
                                          color: bgColor3),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            modeText3,
                                            style: TextStyle(
                                              color: bgColor3 == Colors.black
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SwitchListTile(
                                              value: _switchValue3,
                                              onChanged: (newValue) {
                                                setState(() {
                                                  _switchValue3 = newValue;
                                                  colorChange3();
                                                });
                                              })
                                        ],
                                      )),
                                  Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black54),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: const Offset(2, 5),
                                              blurRadius: 10,
                                              spreadRadius: 0.8,
                                            )
                                          ],
                                          color: bgColor4),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            modeText4,
                                            style: TextStyle(
                                              color: bgColor4 == Colors.black
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SwitchListTile(
                                              value: _switchValue4,
                                              onChanged: (newValue) {
                                                setState(() {
                                                  _switchValue4 = newValue;
                                                  colorChange4();
                                                });
                                              })
                                        ],
                                      )),
                                ]),
                          ),
                        ],
                      ),
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
