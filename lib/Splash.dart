import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yalla/login.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) =>
                    login()
                )
            )
    );
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login',style: TextStyle(color: Colors.red),),
      ),
      body: Container(
        height: 900,
        width: 900,
        color: Colors.red,
        child: Image.asset("assets/yalla.png"),

      ),
    );
  }
}


