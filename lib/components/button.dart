import 'package:flutter/material.dart';
import 'package:qr_generator/themes/colors.dart';

class MyButton extends StatefulWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isPressed = false; // To track the button press state

  void _handleTap() {
    setState(() {
      _isPressed = !_isPressed; // Toggle button pressed state
    });

    if (widget.onTap != null) {
      widget.onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        decoration: BoxDecoration(
          color: _isPressed ? lighterPrimaryColor : primaryColor, // Change color on press
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Center vertically
          children: [
            // Text
            Text(
              widget.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 8),

            // Icon
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
