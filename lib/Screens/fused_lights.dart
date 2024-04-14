import'package:flutter/material.dart';
import 'package:iot_smart_street_light_app/Model/Light_model.dart';
import 'package:iot_smart_street_light_app/Data/dummy_data_lights.dart';
import 'package:in_app_notification/in_app_notification.dart';

class FusedLights extends StatefulWidget{
  @override
  State<FusedLights> createState() {
    return _FusedLightsState();
  }
}
class _FusedLightsState extends State<FusedLights>{
   List<Light> fused = [];
   List<bool> click =
   List.generate(lights.length+1, (index) => false);

   void notification(int index, String location, bool isFirstTap) {
     //inAppNotification package used
     if (isFirstTap) {
       setState(() {
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
  void initState() {
    fused = lights.where((light) => light.status==Status.fused).toList();
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Fused Lights'),
      ),
      body: ListView.builder(itemCount: fused.length ,itemBuilder: (ctx,index) => ListTile(
        title: Text("Light ${fused[index].lightNum}"),
        subtitle: Text("${fused[index].location} , status: ${report[fused[index].status]}"),
          trailing : IconButton(
              onPressed: () {
                bool isFirstTap = click[0];
                setState(() {
                  lights[index].status == Status.fused ? lights[index].status = Status.working : lights[index].status = Status.fused;
                  //toggleClick(0);

                  fused = lights.where((light) => light.status==Status.fused).toList();

                  notification(lights[index].lightNum, lights[index].location, isFirstTap);
                });
              },
              icon: Icon(
                lights[index].status == Status.fused ? Icons.lightbulb_outline_rounded : Icons.lightbulb_rounded,
                color: lights[index].status == Status.fused ? Colors.white : Colors.yellowAccent,
                size: 45,
              ),
          )
      )
      ),
    );
  }
}