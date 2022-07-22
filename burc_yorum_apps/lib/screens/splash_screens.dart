import 'dart:io';

import 'package:firebase_app_web/screens/kayit_ol.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashEkrani extends StatefulWidget {
  const SplashEkrani({Key? key}) : super(key: key);

  @override
  State<SplashEkrani> createState() => _SplashEkraniState();
}

class _SplashEkraniState extends State<SplashEkrani> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SignUpPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/splash_screens.jpg"),
                    fit: BoxFit.fill)),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          )
        ],
      )),
    );
  }
}
