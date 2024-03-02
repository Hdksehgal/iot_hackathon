import 'package:flutter/material.dart';
import 'package:flutter_faq/flutter_faq.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';

class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Frequently Asked Questions",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: const Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(
                  width: 370,
                  child: FAQ(
                    question: 'Who we are',
                    queDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [mainFrameColor4, Colors.white],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    queStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    answer: 'We are Power rangers',
                    ansDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, mainFrameColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    ansStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    ansPadding: EdgeInsets.all(15),
                    showDivider: true,
                  ),
                ),
                SizedBox(
                  width: 370,
                  child: FAQ(
                    question: 'Who we are',
                    queDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [mainFrameColor4, Colors.white],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    queStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    answer: 'We are Power rangers',
                    ansDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, mainFrameColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    ansStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    ansPadding: EdgeInsets.all(15),
                    showDivider: false,
                  ),
                ),
                SizedBox(
                  width: 370,
                  child: FAQ(
                    question: 'Who we are',
                    queDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [mainFrameColor4, Colors.white],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    queStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    answer: 'We are Power rangers',
                    ansDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, mainFrameColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    ansStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    ansPadding: EdgeInsets.all(15),
                    showDivider: false,
                  ),
                ),
                SizedBox(
                  width: 370,
                  child: FAQ(
                    question: 'Who we are',
                    queDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [mainFrameColor4, Colors.white],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    queStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    answer: 'We are Power rangers',
                    ansDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, mainFrameColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    ansStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    ansPadding: EdgeInsets.all(15),
                    showDivider: false,
                  ),
                ),
                SizedBox(
                  width: 370,
                  child: FAQ(
                    question: 'Who we are',
                    queDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [mainFrameColor4, Colors.white],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    queStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    answer: 'We are Power rangers',
                    ansDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, mainFrameColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    ansStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    ansPadding: EdgeInsets.all(15),
                    showDivider: false,
                  ),
                ),
                SizedBox(
                  width: 370,
                  child: FAQ(
                    question: 'Who we are',
                    queDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [mainFrameColor4, Colors.white],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    queStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    answer: 'We are Power rangers',
                    ansDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, mainFrameColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    ansStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    ansPadding: EdgeInsets.all(15),
                    showDivider: false,
                  ),
                ),
                SizedBox(
                  width: 370,
                  child: FAQ(
                    question: 'Who we are',
                    queDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [mainFrameColor4, Colors.white],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    queStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    answer: 'We are Power rangers',
                    ansDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, mainFrameColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    ansStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    ansPadding: EdgeInsets.all(15),
                    showDivider: false,
                  ),
                ),
              ],
            )));
  }
}
