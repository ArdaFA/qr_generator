import 'package:flutter/material.dart';
import 'package:qr_generator/themes/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          toolbarHeight: 80,
          title: Text("QR Code Generator",
            style: TextStyle(
              color: backgroundColor,
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Give the URL to generate a QR Code",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
