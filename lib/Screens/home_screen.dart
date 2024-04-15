import 'package:flutter/material.dart';
import 'package:iot_smart_street_light_app/Complaints/Screens/list_complaints.dart';
import 'package:iot_smart_street_light_app/Screens/notifications.dart';
import 'package:iot_smart_street_light_app/Screens/smartlight.dart';
import 'package:iot_smart_street_light_app/Screens/sos.dart';
import 'package:iot_smart_street_light_app/Screens/streetLight.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';
import 'package:iot_smart_street_light_app/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Color c = ThemeMode.system == ThemeMode.dark ?  Colors.black : Colors.white;

    return Scaffold(
      appBar: AppBar(
        title: const Text("IOT Street light system"),
        centerTitle: true,
      ),
      drawer: DrawerView(),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 3,
              crossAxisSpacing: 20, //spacing btwn the columns
              mainAxisSpacing: 20), //crossAxis = no of columns
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: clist,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                child: ListTile(
                  leading: const Icon(
                    Icons.light,
                    size: 60,
                    color: Colors.black54,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => StreetLight()));
                  },
                  title: const Text(
                    "Street Lights",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                )),
            // Container(
            //     padding: const EdgeInsets.all(40),
            //     decoration: const BoxDecoration(
            //         gradient: LinearGradient(
            //       colors: [ Colors.white, mainFrameColor2],
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomCenter,
            //     )),
            // child: ListTile(
            //   leading: const Icon(
            //     Icons.flashlight_off_outlined,
            //     size: 60,
            //     color: Colors.black54,
            //   ),
            //   onTap: () {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (ctx) => FusedLights()));
            //   },
            //   title: const Text(
            //     "Fused Lights",
            //     textAlign: TextAlign.center,
            //     style: TextStyle(fontSize: 18, color: Colors.black54),
            //   ),
            // )),
            Container(
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: clist,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                child: ListTile(
                  leading: const Icon(
                    Icons.sos_outlined,
                    size: 60,
                    color: Colors.black54,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SOS()));
                  },
                  title: const Text(
                    "SOS Service",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: clist,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                child: ListTile(
                  leading: const Icon(
                    Icons.note_alt_sharp,
                    size: 60,
                    color: Colors.black54,
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) => CompList()));
                  },
                  title: const Text(
                    "Complaints",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                )),
            // Container(
            //     padding: const EdgeInsets.all(40),
            //     decoration: const BoxDecoration(
            //         gradient: LinearGradient(
            //       colors: [Colors.white, mainFrameColor2],
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomCenter,
            //     )),
            //     child: ListTile(
            //       leading: const Icon(
            //         Icons.home_repair_service_outlined,
            //         size: 60,
            //         color: Colors.black54,
            //       ),
            //       onTap: () {},
            //       title: const Text(
            //         "Request Repair",
            //         textAlign: TextAlign.center,
            //         style: TextStyle(fontSize: 18),
            //       ),
            //     )),
            Container(
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: clist,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                child: ListTile(
                  leading: const Icon(
                    Icons.smart_screen_outlined,
                    size: 60,
                    color: Colors.black54,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => SmartLight()));
                  },
                  title: const Text(
                    "Smart Lights",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(247, 201, 101, 1),
                        Color.fromRGBO(234, 173, 38, 1),
                        Color.fromRGBO(242, 158, 80, 1),
                        Color.fromRGBO(255, 127, 77, 1)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                child: ListTile(
                  leading: const Icon(
                    Icons.notifications,
                    size: 60,
                    color: Colors.black54,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => NotificationList()));
                  },
                  title: const Text(
                    "Notifications",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                )),
          ]),
    );
  }
}
