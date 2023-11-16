import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Backgrounds(
        child: SafeArea(
          child: Column(
            children: <Widget> [
              SizedBox(height: 25, ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Column(
                    children: <Widget> [
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
                            labelText: 'Search',
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

                    SizedBox(height: 10,),

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
                            labelText: 'Address',
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
                    ],
                  ),

                  SizedBox(width: 40,),

                  IconButton(
                    onPressed: () {
                      
                    }, 
                    icon: Icon(
                      Icons.account_circle,
                      size: 50,
                    ))
                ],

                
              ),

              SizedBox(height: 15,),

              Container(
                height: 2,
                width: size.width /1.1,
                padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
              ),

              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 70,
                        height: 70,
                        child: Icon(
                          Icons.sports_baseball,
                          size: 60,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: tdDarkBlue,
                            width: 1
                          )
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
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