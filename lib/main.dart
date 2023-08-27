


import 'package:firebase_core/firebase_core.dart';
import 'package:otp/home.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';

import 'package:otp/otp.dart';
import 'package:otp/phone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);






  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'Verify': (context) => MyVerify(),
      'home':(context)=>MyHome(),

    },
  ));
}


