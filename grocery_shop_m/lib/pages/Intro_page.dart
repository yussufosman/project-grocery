import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'Home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const edgeInsets =
        const EdgeInsets.only(left: 22.0, right: 42, bottom: 22, top: 22);
    return Scaffold(
      body: ListView(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.asset('lib/images/avocado.png'),
          ),

          // we delivery groceries your doorstep
          Padding(
            padding: edgeInsets,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "we delivery groceries  your doorstep",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),

          //fresh item everyday

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "fresh item everyday",
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),
          const Spacer(),

          //get start button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(90),
              ),
              padding: const EdgeInsets.all(25),
              child: const Text(
                "Get Start",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
