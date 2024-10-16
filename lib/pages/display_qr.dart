import 'package:flutter/material.dart';
import 'package:qr_generator/themes/colors.dart';

import '../components/button.dart';

class DisplayQR extends StatelessWidget {
  const DisplayQR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No appBar property here, removing it
      backgroundColor: backgroundColor, // solid color for the background
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 120, 24, 120),
        child: Column(
          children: [
            // text to show qr code
            Text(
              "Here is your QR Code",
              style: TextStyle(color: primaryColor), // add text color if needed
            ),

            const SizedBox(height: 24,),

            // qr code itself (you can add the QR code widget here)

            // button to save it
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: MyButton(
                text: "save",
                onTap: () {
                  // Action when the button is tapped
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
