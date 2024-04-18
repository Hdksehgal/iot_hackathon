import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:iot_smart_street_light_app/Screens/Loading_screen.dart';
import 'package:iot_smart_street_light_app/Screens/home_screen.dart';
import 'package:iot_smart_street_light_app/Screens/login.dart';
// import 'package:iot_smart_street_light_app/Screens/signup.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InAppNotification(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeday,
        darkTheme: themedark,
        home: AnimatedSplashScreen(
          splash: Image.asset("assets/images/smart-light.png"),
          nextScreen: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (ctx, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return LoadingScreen();
                }

                if (snapshot.hasData) {
                  return const HomeScreen();
                }
                return Login();
              }),
        ),
      ),
    );
  }
}
