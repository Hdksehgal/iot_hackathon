import 'package:flutter/material.dart';
import 'package:iot_smart_street_light_app/Complaints/Model/data_model.dart';
import 'package:iot_smart_street_light_app/palats/color.dart';

class CompDetail extends StatelessWidget {
  const CompDetail({super.key, required this.comp});
  final Complaint comp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complaint details'),
      ),
      body: Stack(
        children: [
          Image.file(
            comp.image,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned(
              top: 600,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black87],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
                child: Column(
                  children: [
                    Text(
                      "Title : ${comp.subject}",
                      style: const TextStyle(fontSize: 25),
                    ),
                    Text(
                      "Description : ${comp.description}",
                      style: themeday.textTheme.titleMedium,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
