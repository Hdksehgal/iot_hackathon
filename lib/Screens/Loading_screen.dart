import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IOT Street Light System"),
      ),
      body: Center(child: Text("Loading...",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w100),)),
    );
  }
}