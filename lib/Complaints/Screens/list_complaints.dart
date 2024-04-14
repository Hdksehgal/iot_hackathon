import 'package:iot_smart_street_light_app/Complaints/Data/dummy_data.dart';
import 'package:iot_smart_street_light_app/Complaints/Model/data_model.dart';
import 'package:iot_smart_street_light_app/Complaints/Screens/complaint_detail.dart';
import 'package:iot_smart_street_light_app/Complaints/Screens/form_screen.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompList extends StatefulWidget {
  @override
  State<CompList> createState() {
    return _CompListState();
  }
}

class _CompListState extends State<CompList> {
  List<Complaint> _usedList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text('Complaints'),
          actions: [
            IconButton(
              onPressed: () async {
                final list = await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FormScreen()));
                setState(() {
                  _usedList = list;
                });
              },
              icon:const Icon(Icons.add_rounded),
            )
          ],
        ),
        body: _usedList.isEmpty
            ? const Center(
                child: Text(
                "No Complaints",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
              ))
            : ListView.builder(
                itemCount: _usedList.length,
                itemBuilder: (context, index) => Card(
                  margin:const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: ListTile(
                    //tileColor: Theme.of(context).colorScheme.tertiary,
                    title: Text(_usedList[index].subject),
                    trailing: Text(_usedList[index].time),
                    leading: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => CompDetail(comp: _usedList[index])));
                      },
                      child: CircleAvatar(
                        backgroundImage: FileImage(_usedList[index].image),
                        radius: 30,
                      ),
                    ),
                    subtitle: (_usedList[index].description.length > 8)
                        ? Text(
                            "${_usedList[index].description.substring(0, 8)}...")
                        : Text("${_usedList[index].description}"),
                  ),
                ),
              ));
  }
}
