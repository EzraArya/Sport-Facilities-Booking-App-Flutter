
import 'package:ease_booking_app/component/background.dart';
import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/entry/login_page.dart';
import 'package:ease_booking_app/screen/entry/register_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  bool _isActive = false;

  void _toggleActive() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: Text(
                  "EASE",
                  style: GoogleFonts.montserratAlternates(
                    fontWeight: FontWeight.w600,
                    fontSize: 80,
                  )
                ),
              ),

              SizedBox(height: 220,),

              SizedBox(
                height: 32,
                width: 192,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const loginScreen())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tdLightBlue,
                    side: BorderSide(
                      color: tdBlack,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150)
                    ),
                  ),
                  child: Text(
                    "Log In",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: tdBlack
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30,),

              SizedBox(
                height: 32,
                width: 192,
                child: ElevatedButton(
                  onPressed: () {
                    _toggleActive();
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const registerScreen(),));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isActive ? tdDarkerBlue : tdLightBlue,
                    side: BorderSide(
                      color: tdBlack,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150)
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: tdBlack
                    ),
                  ),   
                ),
              )
            ],
          )
          ),
        ),
    );
  }
}