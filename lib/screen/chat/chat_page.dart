import 'package:ease_booking_app/component/background.dart';
import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/chat/chat_open_page.dart';
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
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                      "Chat",
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                ),
                Container(
                  height: 800,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => chatBoxScreen(),));
                          },
                          child: Container(
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: tdBlack, width: 1),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top : 8.0, left: 8.0, bottom: 2.0),
                                  child: Text(
                                    "Nama Lapangan",
                                    style: GoogleFonts.montserratAlternates(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                        
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, bottom: 2.0),
                                  child : Text(
                                    "Chat Text",
                                    style: GoogleFonts.montserratAlternates(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(bottom : 8.0, right: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "00.00",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300
                                        ),
                                      ),
                                      Icon(
                                        Icons.check,
                                        size: 24,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

