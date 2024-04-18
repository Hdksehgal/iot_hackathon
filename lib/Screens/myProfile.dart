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
                          backgroundImage: NetworkImage(
                              'https://private-user-images.githubusercontent.com/119584242/323701585-0cb9562a-042f-45ef-9cd6-df7b1b019673.jpg?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTM0NzQ3MjAsIm5iZiI6MTcxMzQ3NDQyMCwicGF0aCI6Ii8xMTk1ODQyNDIvMzIzNzAxNTg1LTBjYjk1NjJhLTA0MmYtNDVlZi05Y2Q2LWRmN2IxYjAxOTY3My5qcGc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwNDE4JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDQxOFQyMTA3MDBaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1jZjIzOTUzNDk5MDAxNTI3NzI3NTA5NjVlYTI0ODIwNzg1NDVjY2UyMDgwZDMwYzQ3ZGEyMjRlM2FkMjliNjQ2JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.-B20WplPxrcJrS8HptWdrbIp-hs5SIxuqKhLMXei450'),
                        ),
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
