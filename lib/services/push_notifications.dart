//SHA1:1C:35:4C:41:25:2E:3B:75:BD:E1:31:B1:1D:94:76:A3:29:4C:8A:32

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsServicio {
  //saber toodo lo dep oryecto y firebase
  static FirebaseMessaging mensaje = FirebaseMessaging.instance;

  static String? token;

  static Future initializeApp1() async {
    //Push Notifications
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print(token);

    //local notifications
  }
}
