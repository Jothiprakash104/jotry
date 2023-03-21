
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:jotry/screens/Login_page.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tbib_splash_screen/splash_screen.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

class SplashScreen extends StatefulWidget {
  const   SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: (4)),
      vsync: this,
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body:Center(
      child:  SplashScreenView(
                       navigateRoute: const Login_page(),
                       // text: WavyAnimatedText(
                       //   "Splash Screen",
                       //   textStyle: const TextStyle(
                       //     color: Colors.red,
                       //     fontSize: 32.0,
                       //     fontWeight: FontWeight.bold,
                       //   ),
                       // ),
                       imageSrc: "assets/images/intro.gif",logoSize: double.maxFinite ,backgroundColor: Colors.black,
                     ),
        //
        //
        // Lottie.asset(
      //   'assets/json/logo.json',
      //   controller: _controller,
      //   height: MediaQuery.of(context).size.height * 0.7,
      //   animate: true,
      //   onLoaded: (composition) {
      //     _controller
      //       ..duration = composition.duration
      //       ..forward().whenComplete(() => Navigator.pushReplacement(
      //             context,
      //             MaterialPageRoute(builder: (context) => Login_page()),
      //           ));
      //   },
      // ),
      ),
    );
  }
}