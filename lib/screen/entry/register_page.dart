import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/entry/login_page.dart';
import 'package:ease_booking_app/screen/main/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  bool _isHiddenPassword = true;
  bool _isHiddenConfirmedPassword = true;
  bool _isActive = false;

  void _toggleActive() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Backgrounds(
        child: SafeArea(
        child : Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Login Text
              Text(
                'Register',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, 
                  fontSize: 32,
                  color: Colors.black),
              ),

              const SizedBox(height: 35, width: 47),

              Column(
                children: <Widget>[
                  //Name TextField
                  SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                      ),
                      decoration: InputDecoration(
                          filled: true, 
                          fillColor: tdLightBlue,
                          labelText: 'Full Name',
                          labelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color : const Color.fromARGB(53, 0, 0, 0)
                          ),
                          floatingLabelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            color :  Colors.black
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                        ),
                      ),
                  ),

                  const SizedBox(height: 25),

                  //Username TextField
                  SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                      ),
                      decoration: InputDecoration(
                          filled: true, 
                          fillColor: tdLightBlue,
                          labelText: 'Username',
                          labelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color : const Color.fromARGB(53, 0, 0, 0)
                          ),
                          floatingLabelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            color :  Colors.black
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                        ),
                      ),
                  ),

                  const SizedBox(height: 25),

                  //Username TextField
                  SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                      ),
                      decoration: InputDecoration(
                          filled: true, 
                          fillColor: tdLightBlue,
                          labelText: 'Telephone',
                          labelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color : const Color.fromARGB(53, 0, 0, 0)
                          ),
                          floatingLabelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            color :  Colors.black
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                        ),
                      ),
                  ),

                  const SizedBox(height: 25),

                  // email textfield
                  SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                      ),
                      decoration: InputDecoration(
                          filled: true, 
                          fillColor: tdLightBlue,
                          labelText: 'Email',
                          labelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color : const Color.fromARGB(53, 0, 0, 0)
                          ),
                          floatingLabelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            color :  Colors.black
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                        ),
                      ),
                  ),

                  const SizedBox(height: 25),

                  // confirm password textfield

                  SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      obscureText: _isHiddenPassword,
                  
                      decoration: InputDecoration(
                        filled: true, 
                          fillColor: tdLightBlue,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isHiddenPassword = !_isHiddenPassword;
                              });
                            },
                            icon: Icon(
                              _isHiddenPassword ? Icons.visibility : Icons.visibility_off,
                              color: Colors.black,
                            )
                          ),
                          labelText: 'Password',
                          labelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color :  const Color.fromARGB(53, 0, 0, 0)
                          ),
                          floatingLabelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            color :  Colors.black
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                        ),  
                      ),
                  ),

                  const SizedBox(height: 25),


                  // Confirm Password TextField

                  SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      obscureText: _isHiddenConfirmedPassword,
                  
                      decoration: InputDecoration(
                          filled: true, 
                          fillColor: tdLightBlue,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isHiddenConfirmedPassword = !_isHiddenConfirmedPassword;
                              });
                            },
                            icon: Icon(
                              _isHiddenConfirmedPassword ? Icons.visibility : Icons.visibility_off,
                              color: Colors.black,
                            )
                          ),
                          labelText: 'Confirm Password',
                          labelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color :  const Color.fromARGB(53, 0, 0, 0)
                          ),
                          floatingLabelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            color :  Colors.black
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                        ),  
                      ),
                  ),

              SizedBox(width: 50, height: 25,),

              //Register Button
              SizedBox(
                width: 265,
                height: 46,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: const Offset(0, 4)
                      )
                    ]
                  ),
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
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        side : BorderSide(color:  Colors.black),
                      )
                    ),
                    child: Text(
                      'Register',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),
                    ),
                  ),
                ),
              ),

              Row(
              //Dont have an account text
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.montserrat(
                      color : Colors.black.withOpacity(0.53),
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                    )
                  ),

                  const SizedBox(width: 20),
                  
                  //sign up button
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => const loginScreen())
                      );
                    },
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color : Colors.black
                      )
                    ),
                  ),
                ],
                ),
                ],
              ),
            ],
            )
          ),
        ),
      ),),
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
          child,
        ],
      ),
    );
  }
}