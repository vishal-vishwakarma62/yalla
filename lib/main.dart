import 'package:flutter/material.dart';
import 'package:yalla/Splash.dart';
import 'package:yalla/addaddress.dart';
import 'package:yalla/cetegory.dart';
import 'package:yalla/home.dart';
import 'package:yalla/login.dart';
import 'package:yalla/otpverify.dart';
import 'package:yalla/placeorder.dart';
import 'package:yalla/reestorantdetails.dart';
import 'package:yalla/saveaddress.dart';
import 'package:yalla/viewcart.dart';

void main() {
  runApp(const MyApp());
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
      home:  Splash(),
    );
  }
}

