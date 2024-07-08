import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hostel_managemant_application/screen/homepage.dart';
import 'package:hostel_managemant_application/screen/login.dart';
//import 'package:hostel_managemant_application/screen/homepage.dart';
import 'package:hostel_managemant_application/screen/splashscreen.dart';

void main() async{
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBdZ7H9faLvGVfTJ2DdKFlM1MJSbklqJAY",
        appId: "1:833046034175:android:0353ecfd1913a3fdcdfeca",
        messagingSenderId: "833046034175" ,
        projectId:  "hostalmanagemant",
      databaseURL: " https://hostalmanagemant-default-rtdb.firebaseio.com/"
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      //home: const LoginScreen(),
      //home: const HomePage(),
    );
  }
}
