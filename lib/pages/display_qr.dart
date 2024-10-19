import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_generator/themes/colors.dart';
import '../components/button.dart';

class DisplayQR extends StatefulWidget {
  const DisplayQR({Key? key}) : super(key: key);

  @override
  State<DisplayQR> createState() => _DisplayQRState();
}

class _DisplayQRState extends State<DisplayQR> {
  @override
  Widget build(BuildContext context) {

    // Retrieve the URL that was passed as an argument
    final String? qrData = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      // No appBar property here, removing it
      backgroundColor: backgroundColor, // solid color for the background
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 120, 24, 220),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // text to show qr code
            Text(
              "Here is your QR Code",
              style: TextStyle(color: primaryColor), // add text color if needed
            ),

            const SizedBox(height: 24,),

            // first, try to display the text that has been entered
            // Display the URL text
            if (qrData != null)
              Text(
                qrData,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),

            // QR code itself
            if (qrData != null && qrData.isNotEmpty) // Only display if qrData is valid
              // qrData is guaranteed to be non-null
              QrImageView(
                data: qrData,
                version: QrVersions.auto,
                size: 200.0,
              ),

            const SizedBox(height: 8,),

            // button to save it
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyButton(
                  text: "save",
                  onTap: () {
                    // Action when the button is tapped
                  },
                ),

                const SizedBox(width: 8,),

                MyButton(
                  text: "share",
                  onTap: () {
                    // Action when the button is tapped
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
