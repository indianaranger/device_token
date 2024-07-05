import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FCM Device Token Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              String? deviceToken = await FirebaseMessaging.instance.getToken();
              print('Device Token: $deviceToken');
            },
            child: Text('Get Device Token'),
          ),
        ),
      ),
    );
  }
}
