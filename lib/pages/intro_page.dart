import 'package:flutter/material.dart';
import 'package:qr_generator/themes/colors.dart';

import '../components/button.dart';

class IntroPage extends StatelessWidget {
  IntroPage({Key? key}) : super(key: key);

  // Controller to get the text input
  final TextEditingController _urlController = TextEditingController();

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
                  controller: _urlController,
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


              const SizedBox(height: 12,),
              // button to generate QR Code
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: MyButton(
                    text: "generate",
                    onTap: (){
                      // When the button is pressed, navigate to DisplayQR
                      // and pass the URL entered by the user
                      Navigator.pushNamed(
                        context,
                        '/displayQr',
                        arguments: _urlController.text,  // Pass the text as an argument
                      );
                    }),
              )


            ],
          ),

        ),
      ),
    );
  }
}
