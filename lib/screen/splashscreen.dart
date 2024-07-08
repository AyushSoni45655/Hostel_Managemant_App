import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hostel_managemant_application/screen/homepage.dart';
import 'package:hostel_managemant_application/screen/login.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(const Duration(seconds: 4), (timer) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150,),
            Center(child: Image.asset("asset/image/logo.jpeg")),
            SizedBox(height: 70,),
            AnimatedTextKit(
              totalRepeatCount: 5,
               repeatForever: true,
              animatedTexts: [
                TyperAnimatedText("Hostel Management App",
                    textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  letterSpacing: 1,
                  fontStyle: FontStyle.italic,
                ),speed: Duration( milliseconds: 100)),
              ],
            ),
            SizedBox(height: 30,),
            SpinKitWaveSpinner(
              color:
            Colors.green,
              size: 60,
              waveColor: Colors.green.shade100,)
          ],
        ),
      ),
    );
  }
}
