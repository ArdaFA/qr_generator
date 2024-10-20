import 'package:flutter/material.dart';
import 'package:qr_generator/pages/display_qr.dart';
import 'package:qr_generator/pages/homepage.dart';
import 'package:qr_generator/pages/intro_page.dart';
import 'package:qr_generator/pages/scan_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        '/homepage' : (context) => const Home(),
        '/intropage': (context) => IntroPage(),
        '/displayQr' : (context) => const DisplayQR(),
        '/scanpage' : (context) => const ScanQR(),

      },
    ); //MaterialApp
  }
}