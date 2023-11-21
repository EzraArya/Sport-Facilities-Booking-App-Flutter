import 'package:ease_booking_app/component/background.dart';
import 'package:ease_booking_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bankPaymentScreen extends StatefulWidget {
  const bankPaymentScreen({super.key});

  @override
  State<bankPaymentScreen> createState() => _bankPaymentScreenState();
}

class _bankPaymentScreenState extends State<bankPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        }, 
                        icon: Icon(Icons.arrow_back_ios)
                      ),
                      Text(
                        "Bank Transfer",
                        style : GoogleFonts.montserratAlternates(
                          color: tdBlack,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      SizedBox(width: 50,)
                    ],
                  ),

                  SizedBox(height: 20,),

                  Container(
                    height: 800,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Bank $index",
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        );
                      }, 
                      separatorBuilder: (context, index) {
                        return Divider();
                      }, 
                      itemCount: 20),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}