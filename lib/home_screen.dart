import 'package:appnotification/notification_services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices notificationServices =NotificationServices();
  @override
  void initState() {
    super.initState();

    notificationServices.requestNotificationPermission();

    notificationServices.getDeviceToken().then((value) {
      print('device token');
      print(value);
    },);

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Center(
          child: Container(
            color: Colors.red,
            height: 50,
            width: 50,
            child: Center(child: Text('Notification',style: TextStyle(fontSize: 16),)),
          ),
        )
        ],
      ),
    ),
    );
  }
}
