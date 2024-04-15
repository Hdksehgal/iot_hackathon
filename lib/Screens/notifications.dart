import 'package:flutter/material.dart';
import 'package:iot_smart_street_light_app/Data/dummy_data_notifications.dart';

class NotificationList extends StatefulWidget {
  @override
  State<NotificationList> createState() {
    return _NotificationListState();
  }
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: notifications.isEmpty
          ? const Center(
              child: Text(
              'No Notifications',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
            ))
          : ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (ctx, index) => Card(
                      child: ListTile(
                    leading: const Icon(Icons.notifications_active_outlined),
                    title: Text(
                      "${notifications[index].heading}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("${notifications[index].description}"),
                    trailing: Text(notifications[index].time),
                  ))),
    );
  }
}
