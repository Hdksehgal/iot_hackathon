import 'dart:core';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iot_smart_street_light_app/Complaints/Data/dummy_data.dart';
import 'package:iot_smart_street_light_app/Complaints/Model/data_model.dart';

// List<String> lights = [
//   "Mohali Phase 1, Light 1",
//   "Mohali Phase 2, Light 1",
// ];

class FormScreen extends StatefulWidget {
  @override
  State<FormScreen> createState() {
    return _FormScreenState();
  }
}

class _FormScreenState extends State<FormScreen> {
  var _selTitle = '';
  var _description = '';
  var selLight = '';
  final _formkey = GlobalKey<FormState>();
  File? image;

  void _takePicture() async {
    final imagepicker = ImagePicker();
    final pickedimage =
        await imagepicker.pickImage(source: ImageSource.camera, maxWidth: 600);

    if (pickedimage == null) return;

    setState(() {
      image = File(pickedimage.path);
    });
  }

  void _saveComplaint() {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
      if (image == null) return;

      final datetime = DateTime.now();
      final hour = datetime.hour;
      final minute = datetime.minute;
      final complaint = Complaint(
          subject: _selTitle,
          description: _description,
          image: image!,
          time: (hour > 12)
              ? "${hour % 12}:$minute PM"
              : (hour == 12)
                  ? "${hour}:$minute PM"
                  : "${hour}:$minute AM");

      setState(() {
        complaints.add(complaint);
      });
      final dummy = complaints;
      Navigator.of(context).pop(dummy);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Raise a complaint'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: const Text('Subject'),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    fillColor:
                        Theme.of(context).copyWith().colorScheme.background,
                  ),
                  maxLength: 50,
                  validator: (str) {
                    if (str == null ||
                        str.length == null ||
                        str.trim().length <= 1 ||
                        str.trim().length > 50)
                      return "No. of characters should be between 2 to 50";
                    return null;
                  },
                  onSaved: (value) {
                    _selTitle = value!;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                // DropdownButtonFormField(
                //     value: selLight,
                //     items: [
                //       for (final light in lights)
                //         DropdownMenuItem(
                //           child: Row(
                //             children: [
                //               Text(light),
                //             ],
                //           ),
                //         )
                //     ],
                //   onChanged: (light){
                //       selLight = light;
                //   },
                // ),
                const SizedBox(
                  height: 20,
                ),

                TextFormField(
                  maxLines: 5,
                  decoration: const InputDecoration(
                    label: Text('Description'),
                    hintText: "Enter description here...",
                    border: OutlineInputBorder(),
                  ),
                  validator: (str) {
                    if (str == null ||
                        str.length == null ||
                        str.trim().length <= 1 ||
                        str.trim().length > 100)
                      return "No. of characters should be between 2 to 100";
                    return null;
                  },
                  onChanged: (value) {
                    _description = value;
                  },
                  onSaved: (value) {
                    _description = value!;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),

                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    alignment: Alignment.center,
                    height: 250,
                    width: double.infinity,
                    child: image != null
                        ? Stack(
                            children: [
                              Image.file(image!,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity),
                              Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: TextButton(
                                      onPressed: _takePicture,
                                      child: Text("Retake")))
                            ],
                          )
                        : TextButton.icon(
                            onPressed: _takePicture,
                            icon: const Icon(Icons.image_outlined),
                            label: const Text('Take Picture'))),
                const SizedBox(
                  height: 20,
                ),

                ElevatedButton.icon(
                  onPressed: _saveComplaint,
                  icon: const Icon(Icons.send_rounded),
                  label: const Text("Send request"),
                )
              ],
            )),
      )),
    );
  }
}
