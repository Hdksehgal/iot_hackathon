import 'dart:ui';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:iot_smart_street_light_app/palats/color.dart';
// import 'package:iot_smart_street_light_app/widgets/qr_code_scanner.dart';
// import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog.dart';
//import 'package:qr_code_scanner/qr_code_scanner.dart';

class SmartLight extends StatefulWidget {
  const SmartLight({super.key});
  @override
  _SmartLightState createState() => _SmartLightState();
}

class _SmartLightState extends State<SmartLight> {
  Color _currentColor = Colors.blue;
  final _controller = CircleColorPickerController(
    initialColor: Colors.blue,
  );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: (){},
              //   Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => QRcode(),
              //   ));
              // },
              icon: const Icon(
                Icons.qr_code_scanner_rounded,
                // color: Colors.black,
                size: 35,
              ),
            )
          ],
          // backgroundColor: _currentColor,
          title: const Text(
            'Add a Smart Light',
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              //   decoration: const BoxDecoration(
              //       gradient: LinearGradient(
              //           colors: [mainFrameColor2, mainFrameColor5])),
              // ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 10),
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
                          color: _currentColor.withOpacity(0.9),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // const SizedBox(height: 30),
                              Center(
                                child: CircleColorPicker(
                                  controller: _controller,
                                  onChanged: (color) {
                                    setState(() => _currentColor = color);
                                  },
                                ),
                              ),
                              const SizedBox(height: 48),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                      bottomLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(40)),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextButton(
                                      onPressed: () =>
                                          _controller.color = Colors.blue,
                                      child: const Text('BLUE',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 15)),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          _controller.color = Colors.green,
                                      child: const Text('GREEN',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15)),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          _controller.color = Colors.red,
                                      child: const Text('RED',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 15)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))),
              ),
            ),
          ],
        ));
  }
}
