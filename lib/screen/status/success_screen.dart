import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/main/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class successScreen extends StatefulWidget {
  const successScreen({super.key});

  @override
  State<successScreen> createState() => _successScreenState();
}

class _successScreenState extends State<successScreen> {
  bool _isActive = false;

  void _toggleActive() {
    setState(() {
      _isActive = !_isActive;
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Backgrounds(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                Text(
                  "SUCCESS",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                
                Icon(
                  Icons.check_circle_rounded,
                  color: Colors.green,
                  size: 150,
                ),
                SizedBox(height: 430,),

                SizedBox(
                  width: 200,
                  height: 50,
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        _toggleActive();
                        Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => const homeScreen())
                        );
                      }, 
                      style: ElevatedButton.styleFrom(
                        foregroundColor: tdBlack, backgroundColor: _isActive ? tdDarkerBlue : tdLightBlue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          side : BorderSide(color:  Colors.black),
                        )
                      ),
                      child: Text(
                        'Home',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                        ),
                      ),
                    ),
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

class Backgrounds extends StatelessWidget {
  final Widget child;
  const Backgrounds({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            right : 0,
            child: Image.asset(
              "assets/images/Rectangle_top.png",
              width: size.width * 0.56,
            )
          ),

          Positioned(
            right: 0,
            bottom: 100,
            child: Image.asset(
              "assets/images/Rectangle_mid.png",
              width: size.width * 0.75,
            )),

          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/Rectangle_bot.png",
              width: size.width * 0.7,
            )
          ),
          Positioned(top:0,left: 0, right: 0,child: child),
        ],
      ),
    );
  }
}
