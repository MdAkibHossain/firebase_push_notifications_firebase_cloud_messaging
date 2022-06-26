import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'services/local_notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? notificationMes = "Waiting for notification!";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LocalNotificationService.initilize();

    /// Terminated State
    FirebaseMessaging.instance.getInitialMessage().then((event) {
      if (event != null) {
        setState(() {
          notificationMes =
              "${event.notification!.title} ${event.notification!.body} I am coming from terminated state";
        });
      }
    });

    /// Foreground State
    FirebaseMessaging.onMessage.listen((event) {
      LocalNotificationService.showNotificationOnForeground(event);
      setState(() {
        notificationMes =
            "${event.notification!.title} ${event.notification!.body} I am coming from foreground";
      });
    });

    /// Background State
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      setState(() {
        notificationMes =
            "${event.notification!.title} ${event.notification!.body} I am coming from background";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Notification"),
      ),
      body: Center(
        child: Text(
          notificationMes!,
          textAlign: TextAlign.center,
        ),
      ),
    ));
  }
}
