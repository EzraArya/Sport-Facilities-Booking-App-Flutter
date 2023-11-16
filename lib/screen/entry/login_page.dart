import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/entry/register_page.dart';
import 'package:ease_booking_app/screen/main/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool _isHidden = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                'Login',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, 
                  fontSize: 32,
                  color: Colors.black),
              ),

              const SizedBox(height: 30, width: 1,),

              
              //Username TextField
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 265,
                      height: 42,
                      child: TextFormField(
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: tdLightBlue,
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            labelText: 'Username',
                            labelStyle: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color : Color.fromARGB(75, 0, 0, 0)
                            ),
                            floatingLabelStyle: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              color :  Colors.black
                            ),
                            border:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black, width: 1), 
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black, width: 1), 
                            ),
                          ),
                          validator: (value) {
                            if (value?.isEmpty ?? true){
                              return "* Required";
                            } else {
                              return null;
                            }
                          },
                        ),
                    ),
              
                    const SizedBox(height: 25),
              
                    //Password TextField
              
                    SizedBox(
                      width: 265,
                      height: 42,
                      child: TextFormField(
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                            filled: true, 
                            fillColor: tdLightBlue,
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isHidden = !_isHidden;
                                });
                              },
                              icon: Icon(
                                _isHidden ? Icons.visibility : Icons.visibility_off,
                                color: Colors.black,
                              )
                            ),
                            labelText: 'Password',
                            labelStyle: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color :  const Color.fromARGB(75, 0, 0, 0)
                            ),
                            floatingLabelStyle: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              color :  Colors.black
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black, width: 1), 
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black, width: 1), 
                            ),
                          ),
                          validator: (value) {
                            if (value?.isEmpty ?? true){
                              return "* Required";
                            } else {
                              return null;
                          }
                        },  
                        ),
                    ),
              
                    //Forgot Password
                    Padding(
                      padding: const EdgeInsets.only(right: 55),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {
                              // Handle forgot password
                            },
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              
                SizedBox(width: 50, height: 25,),
              
                //Login Button
                SizedBox(
                  width: 265,
                  height: 46,
                  child: Container(
                    decoration: BoxDecoration(
                      color: tdLightBlue,
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
                        if(_formKey.currentState?.validate() ?? false){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => const homeScreen())
                        );
                        } 
                      }, 
                      style: ElevatedButton.styleFrom(
                        foregroundColor: tdBlack, backgroundColor: tdLightBlue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          side : BorderSide(color:  Colors.black),
                        )
                      ),
                      child: Text(
                        'Login',
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
                      "Don't have an account?",
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
                          MaterialPageRoute(builder: (context) => const registerScreen())
                        );
                      },
                      child: Text(
                        'Sign Up',
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
              ),
            ],
            )
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
          child,
        ],
      ),
    );
  }
}