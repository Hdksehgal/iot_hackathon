import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';

class aboutUs extends StatelessWidget {
  const aboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                  "assets/images/20230221_091438.jpg")),
                          SizedBox(height: 10),
                          Text(
                            "Gaurav Kumar Biswas\n3rd Year, Btech CSE, 2129651",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.black
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 300,
                            child: Text(
                              "Hi everyone! I'm Gaurav Kumar Biswas, a 3rd year student at Chandigarh Group of College, Jhanjeri. Originally from Kolkata, West Bengal, I'm majoring in Java and Data Structures & Algorithms. But my true passion lies in Flutter development, where I have experience building cross-platform apps using Dart, Flutter web, Flutter Flow, Git, Firebase, and RESTful APIs. Beyond coding, I'm also a leader! For 2 years, I've managed multiple communities and events, bringing people together. Let's discuss mobile app development or building a thriving community!",
                              style: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.black
                                    : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                  "assets/images/WhatsApp Image 2024-04-18 at 22.50.23_a4034c1c.jpg")),
                          const SizedBox(height: 10),
                          Text(
                            "Hardik\n3rd Year, Btech CSE, 2129653",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.black
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 300,
                            child: Text(
                              "I am Hardik Sehgal, a computer science engineer from Rohtak, Haryana, with a passion for software development. I leverage my skills in Flutter, Dart, Git, Firebase, and REST APIs to build mobile applications. From managing favorite places and shopping lists to meal planning apps, I enjoy creating solutions that enhance user experiences. As a team player with strong problem-solving and communication skills, I'm eager to contribute my expertise to new challenges.",
                              style: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.black
                                    : Colors.black,
                              ),
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
      ),
    );
  }
}
