import 'dart:core';

import 'package:flutter/material.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:iot_smart_street_light_app/Data/dummy_data_lights.dart';
import 'package:iot_smart_street_light_app/Data/dummy_data_notifications.dart';
import 'package:iot_smart_street_light_app/Model/Light_model.dart';
import 'package:iot_smart_street_light_app/Model/notification_model.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/weather.dart';

class StreetLight extends StatefulWidget {
  @override
  _StreetLightState createState() => _StreetLightState();
}

class _StreetLightState extends State<StreetLight> {
  List<bool> click = List.generate(lights.length + 1, (index) => true);
  List<bool> onoff = List.generate(lights.length + 1, (index) => true);
  Weather? _weather;
  final datetime = DateTime.now();

  //click index for every ListTile
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
  void initState() {
    super.initState();
    fetchWeather();
    checkTime();
  }

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

  void checkTime() {
    final hour = datetime.hour;
    List<bool> allOn = List.generate(lights.length + 1, (index) => true);
    setState(() {
      hour >= 6 && hour <= 18
          ? onoff.setAll(0, List.generate(lights.length + 1, (index) => false))
          : onoff.setAll(0, List.generate(lights.length + 1, (index) => true));
    });
  }

  void notifier(int index, String location, bool isFirstTap) {
    //inAppNotification package used
    final hour = datetime.hour;
    final minute = datetime.minute;
    if (isFirstTap) {
      setState(() {
        final notif1 = Note(
            description:
                "Staffs are requested to send inspection team to $location",
            heading: "Light $index got an issue",
            time: (hour > 12)
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
        final notif2 = Note(
            description:
                "Issue with Light $index of $location has been acknowledged",
            heading: "Light $index got fixed",
            time: (hour > 12)
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

  void fetchWeather() async {
    WeatherFactory wfac = WeatherFactory("bc5ef77f5977f826838b05538651a6cf",
        language: Language.ENGLISH);
    Weather weather = await wfac.currentWeatherByLocation(30.68, 76.7221);
    setState(() {
      _weather = weather;
    });
  }

  String weatherAnime(String? main) {
    if (main == null) return "assets/sunny.json";
    switch (main.toLowerCase()) {
      case "clouds":
      case "mist":
        return "assets/cloudy.json";
      case "haze":
        return "assets/haze.json";
      case "smoke":
      case "fog":
        return "assets/fog.json";
      case "rain":
        return "assets/rain.json";
      case "drizzle":
      case "shower rain":
        return "assets/drizzle.json";
      case "thunderstorm":
        return "assets/thunderstorm.json";
      case "clear":
        return "assets/sunny.json";
      default:
        return "assets/sunny.json";
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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _weather == null
              ? [
                  const Center(
                    child: CircularProgressIndicator(),
                  )
                ]
              : [
                  Center(
                    child: Lottie.asset(weatherAnime(_weather!.weatherMain),
                        height: 150, width: 150),
                  ),
                  Center(
                    child: Text(
                      "Weather : ${_weather!.weatherMain}\n Temp : ${_weather!.temperature}",
                      style: const TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: lights.length,
                      itemBuilder: (context, index) => ListTile(
                          leading: IconButton(
                            icon: lights[index].status == Status.fused
                                ? const Icon(
                                    Icons.build_outlined,
                                    color: Colors.grey,
                                  )
                                : const Icon(
                                    Icons.check_circle_outline_sharp,
                                    color: Colors.green,
                                  ),
                            onPressed: () {
                              bool isFirstTap = click[index];
                              final hour = datetime.hour;
                              //bool isOn = onoff[index];
                              setState(() {
                                lights[index].status == Status.fused
                                    ? lights[index].status = Status.working
                                    : lights[index].status = Status.fused;
                                //toggleClick(0);

                                notifier(lights[index].lightNum,
                                    lights[index].location, isFirstTap);
                                click[index] = !isFirstTap;
                                click[index] == false
                                    ? onoff[index] = false
                                    : hour >= 6 && hour <= 18
                                        ? onoff[index] = false
                                        : onoff[index] = true;
                              });
                            },
                          ),
                          title: Text(
                            "Light ${lights[index].lightNum}",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          subtitle: Text(
                              "${lights[index].location}  status: ${report[lights[index].status]}"),
                          trailing: IconButton(
                              onPressed: () {
                                bool isOn = onoff[index];
                                setState(() {
                                  onoff[index] = !isOn;
                                });
                              },
                              icon: Icon(
                                onoff[index] == false
                                    ? Icons.lightbulb_outline_rounded
                                    : Icons.lightbulb,
                                color: onoff[index] == false
                                    ? Colors.grey
                                    : Colors.yellowAccent,
                                size: 45,
                              ))),
                    ),
                  ),
                ]),
    );
  }
}
