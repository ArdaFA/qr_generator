import 'package:flutter/material.dart';
import 'package:qr_generator/components/button.dart';
import 'package:qr_generator/themes/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyButton(
                    text: "generate",
                    onTap: (){
                      Navigator.pushNamed(
                        context,
                        '/intropage',
                        );
              }),
                const SizedBox(height: 8,),

                MyButton(
                    text: "scan",
                    onTap: (){}
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
