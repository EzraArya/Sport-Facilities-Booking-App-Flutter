import 'package:ease_booking_app/component/background.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class chatScreen extends StatefulWidget {
  const chatScreen({super.key});

  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    "Chat",
                    style: GoogleFonts.montserrat(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

