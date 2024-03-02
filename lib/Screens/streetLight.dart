import 'dart:async';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:iot_smart_street_light_app/Data/dummy_data_notifications.dart';
import 'package:iot_smart_street_light_app/Model/notification_model.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';
import 'package:iot_smart_street_light_app/Data/dummy_data_lights.dart';
import 'package:iot_smart_street_light_app/Model/Light_model.dart';
import 'dart:io';
import 'dart:core';

class StreetLight extends StatefulWidget {
  @override
  _StreetLightState createState() => _StreetLightState();
}

class _StreetLightState extends State<StreetLight> {
  List<bool> click =
      List.generate(lights.length+1, (index) => true); //click index for every ListTile
  // List<IconData> iconList = List.generate(
  //     lights.length+1,
  //     (index) =>
  //         Icons.lightbulb_outlined); //List of same icon for all the ListTile
  // Timer? timer;
  //
  // int selectedCount = 0;

  // @override
  // void initState() {
  //   //to start the timer
  //   super.initState();
  //   startTimer();
  // }

  @override
  void dispose() {
    //to end the timer
    //timer?.cancel();
    super.dispose();
  }

  // void startTimer() {
  //   timer = Timer.periodic(const Duration(seconds: 2), (Timer t) {
  //     //int duration and is mutable
  //     setState(() {
  //       for (int i = 0; i < iconList.length; i++) {
  //         if (iconList[i] == Icons.lightbulb_outlined) {
  //           iconList[i] = Icons.lightbulb_rounded;
  //         } else {
  //           iconList[i] = Icons.lightbulb_outlined;
  //         }
  //       }
  //     });
  //   });
  // }

  // void toggleClick(int index) {
  //   setState(() {
  //     if (click[index]) {
  //       selectedCount--; //if multiple icons are tapped then the timer will remain off
  //       click[index] = false;
  //       iconList[index] = Icons.highlight_off_outlined;
  //     } else {
  //       selectedCount++; //tapped back and it will ensure that no remaining icons are still paused.
  //       click[index] = true;
  //       iconList[index] = Icons.lightbulb;
  //     }
  //     if (selectedCount == 0) {
  //       startTimer();
  //     } else {
  //       timer?.cancel();
  //     }
  //   });
  // }

  void notifier(int index, String location, bool isFirstTap) {
    //inAppNotification package used
    final datetime = DateTime.now();
    final hour = datetime.hour;
    final minute = datetime.minute;
    if (isFirstTap) {
      setState(() {
        final notif1 = Note(description: "Staffs are requested to send inspection team to $location", heading: "Light $index got an issue",time:(hour > 12)
            ? "${hour % 12}:$minute PM"
            : (hour == 12)
            ? "${hour}:$minute PM"
            : "${hour}:$minute AM");
        notifications.add(notif1);
        InAppNotification.show(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const Icon(
                      Icons.notifications_active,
                      size: 50,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          "Light $index got an issue",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "Staffs are requested to send inspection team to $location")
                      ],
                    ))
                  ],
                ),
              ),
            ),
            context: context);
      });
    } else {
      setState(() {
        final notif2 = Note(description: "Issue with Light $index of $location has been acknowledged", heading: "Light $index got fixed",time:(hour > 12)
            ? "${hour % 12}:$minute PM"
            : (hour == 12)
            ? "${hour}:$minute PM"
            : "${hour}:$minute AM");
        notifications.add(notif2);
        InAppNotification.show(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const Icon(
                      Icons.edit_notifications_sharp,
                      size: 50,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          "Issue with Light $index of $location has been acknowledged",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            context: context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //int count = 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Street Light"),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: lights.length,itemBuilder: (context, index) => ListTile(
        title: Text("Light ${lights[index].lightNum}", style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text("${lights[index].location} , status: ${report[lights[index].status]}"),
          trailing : IconButton(
              onPressed: () {
                bool isFirstTap = click[0];
                setState(() {
                  lights[index].status == Status.fused ? lights[index].status = Status.working : lights[index].status = Status.fused;
                  //toggleClick(0);

                  notifier(lights[index].lightNum, lights[index].location, isFirstTap);
                  click[0] = !isFirstTap;
                });
              },
              icon: Icon(
                lights[index].status == Status.fused ? Icons.lightbulb_outline_rounded : Icons.lightbulb_rounded,
                color: lights[index].status == Status.fused ? Colors.white : Colors.yellowAccent,
                size: 45,
              ))),
      ),)
    ;
  }
}
