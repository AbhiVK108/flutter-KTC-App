import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktc_app/app/modules/login/views/login_view.dart';


import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          duration: 2500,
          splash: Image.asset(
            'assets/logo.png',
        
          ),
          nextScreen: const LoginView(),
          splashTransition: SplashTransition.fadeTransition,
      
        ),
      ),
    );
  }
}
