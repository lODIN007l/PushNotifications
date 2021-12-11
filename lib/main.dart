import 'package:flutter/material.dart';
import 'package:notifications_app/screens/home_screen.dart';
import 'package:notifications_app/screens/message_screen.dart';
import 'package:notifications_app/services/push_notifications.dart';

void main() async {
  //si es asincrono se ocupa esto para que al menos tenga el contexto
  WidgetsFlutterBinding.ensureInitialized();
  //espermaos la respuesta del token que se imprimira en consola
  await PushNotificationsServicio.initializeApp1();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {'home': (_) => HomeScreen(), 'message': (_) => MessageScreen()},
      theme: ThemeData.dark(),
    );
  }
}
