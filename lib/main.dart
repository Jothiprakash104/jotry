import 'package:flutter/material.dart';
import 'package:jotry/screens/Bottombar.dart';
import 'package:jotry/screens/splashscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'try',
      home: SplashScreen(),
    ),
  );
}





