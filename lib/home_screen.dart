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

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
