import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';

class SOS extends StatelessWidget {
  const SOS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SOS Emergency Service"),
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
                top: 200, left: 20, right: 20, bottom: 200),
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
                  padding: const EdgeInsets.only(right: 18, left: 18, top: 15),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)),
                            child: ListTile(
                              leading: const Text(
                                "Police",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black87),
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.call,
                                  color: Colors.black54,
                                ),
                                onPressed: () {
                                  FlutterPhoneDirectCaller.callNumber('100');
                                },
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 13)),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)),
                            child: ListTile(
                              leading: const Text(
                                "Fire & Rescue",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black87),
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.call,
                                    color: Colors.black54),
                                onPressed: () {
                                  FlutterPhoneDirectCaller.callNumber('101');
                                },
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 13)),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)),
                            child: ListTile(
                              leading: const Text(
                                "Ambulance",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.call,
                                  color: Colors.black54,
                                ),
                                onPressed: () {
                                  FlutterPhoneDirectCaller.callNumber('102');
                                },
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 13)),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)),
                            child: ListTile(
                              leading: const Text(
                                "Head Quarter",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.call,
                                  color: Colors.black54,
                                ),
                                onPressed: () {
                                  FlutterPhoneDirectCaller.callNumber(
                                      '+918295579990');
                                },
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 13)),
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
