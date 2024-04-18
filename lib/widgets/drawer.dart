import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:iot_smart_street_light_app/Screens/Setting/settings.dart';
import 'package:iot_smart_street_light_app/Screens/aboutUs.dart';
import 'package:iot_smart_street_light_app/Screens/myProfile.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';
import 'package:iot_smart_street_light_app/widgets/faq.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [mainFrameColor, mainFrameColor2],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Row(
                children: [
                  ProfilePicture(
                    name: "Gaurav Kumar Biswas",
                    radius: 40,
                    fontsize: 28,
                    random: false,
                    tooltip: true,
                    role: "ADMIN",
                  ),
                  SizedBox(
                    width: 18,
                  ),
                ],
              )),
          ListTile(
            leading: const Icon(
              Icons.person,
              size: 26,
              color: mainFrameColor3,
            ),
            title: const Text(
              "My Profile",
              style: TextStyle(color: mainFrameColor3, fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => myProfile()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              size: 26,
              color: mainFrameColor3,
            ),
            title: const Text(
              "Settings",
              style: TextStyle(color: mainFrameColor3, fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => Settings()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.question_mark,
              size: 26,
              color: mainFrameColor3,
            ),
            title: const Text(
              "FAQ",
              style: TextStyle(color: mainFrameColor3, fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Faq()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.sticky_note_2_outlined,
              size: 26,
              color: mainFrameColor3,
            ),
            title: const Text(
              "About Us",
              style: TextStyle(color: mainFrameColor3, fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => aboutUs()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              size: 26,
              color: mainFrameColor3,
            ),
            title: const Text(
              "Log Out",
              style: TextStyle(color: mainFrameColor3, fontSize: 18),
            ),
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
          )
        ],
      ),
    );
  }
}
