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
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: 370,
                    child: FAQ(
                      question:
                          'What is the purpose of the smart street light system?',
                      queDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [mainFrameColor4, Colors.white],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      queStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      answer:
                          'The smart street light system aims to improve lighting control, efficiency, and data collection in urban environments. It uses sensors to detect light levels and movement, allowing for: \nPotential dimming adjustments based on ambient light and motion detection (future upgrade).\nData collection to understand usage patterns and optimize lighting strategies.',
                      ansDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, mainFrameColor],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      ansStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.black
                            : Colors.black,
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
                      question: 'What sensors does the system use?',
                      queDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [mainFrameColor4, Colors.white],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      queStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      answer:
                          'Currently, the system utilizes two main sensors:\nLDR (Light Dependent Resistor): Detects changes in light levels, providing basic awareness of ambient light conditions.\nPIR (Passive Infrared) Sensor: Detects movement by picking up changes in infrared radiation emitted by objects with heat (pedestrians, vehicles).',
                      ansDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, mainFrameColor],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      ansStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.black
                            : Colors.black,
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
                      question:
                          'Does the system automatically adjust the light brightness?',
                      queDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [mainFrameColor4, Colors.white],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      queStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      answer:
                          "In the current version, no. The system collects data from the sensors but doesn't directly control light intensity yet (future upgrade).",
                      ansDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, mainFrameColor],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      ansStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.black
                            : Colors.black,
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
                      question:
                          'What are the benefits of the smart street light system?',
                      queDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [mainFrameColor4, Colors.white],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      queStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      answer:
                          "Potential benefits include:\nEnergy Efficiency: Dimming lights during low-traffic periods can save energy.\nImproved Safety: Motion detection can trigger brighter lights upon movement, enhancing visibility.\nData-Driven Insights: Collected data can inform lighting control strategies and urban planning decisions.",
                      ansDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, mainFrameColor],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      ansStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.black
                            : Colors.black,
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
                      question:
                          'What are the future functionalities of the system?',
                      queDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [mainFrameColor4, Colors.white],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      queStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      answer:
                          "Future upgrades could include:\nIntegrating a microcontroller and relay for dynamic light control based on sensor data.\nAdding environmental sensors for comprehensive monitoring (temperature, humidity).\nUtilizing machine learning for optimizing lighting control strategies.",
                      ansDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, mainFrameColor],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      ansStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.black
                            : Colors.black,
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
                      question:
                          'How does the app interact with the smart street light system?',
                      queDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [mainFrameColor4, Colors.white],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      queStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      answer:
                          "The app (depending on functionalities implemented) could allow users to:\nView and adjust lighting schedules (future upgrade).\nSet dimming preferences (future upgrade).\nManage motion detection sensitivity (if applicable).\nReceive alerts for system events or unusual activity.",
                      ansDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, mainFrameColor],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      ansStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.black
                            : Colors.black,
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
                      question: 'Who manages the data collected by the system?',
                      queDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [mainFrameColor4, Colors.white],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      queStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      answer:
                          "Data security and privacy are important considerations. The app should clearly explain how collected data is stored, accessed, and used, with appropriate user consent and security measures in place.",
                      ansDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, mainFrameColor],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      ansStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.black
                            : Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                      ansPadding: EdgeInsets.all(15),
                      showDivider: false,
                    ),
                  ),
                ],
              ),
            )));
  }
}
