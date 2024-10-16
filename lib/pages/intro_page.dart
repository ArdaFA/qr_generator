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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // guide text for the user
              Text("Give the URL to generate a QR Code",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 16,),

              // enter the URL text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                          width: 3.0
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: secondaryColor,
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
              ),


            ],
          ),

        ),
      ),
    );
  }
}
