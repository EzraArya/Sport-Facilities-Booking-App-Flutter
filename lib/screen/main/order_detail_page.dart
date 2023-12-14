import 'package:ease_booking_app/component/background.dart';
import 'package:ease_booking_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class orderDetailPage extends StatefulWidget {
  const orderDetailPage({super.key});

  @override
  State<orderDetailPage> createState() => _orderDetailPageState();
}

class _orderDetailPageState extends State<orderDetailPage> {
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
                      "Order Detail",
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
                  width: 310,
                  decoration: BoxDecoration(
                    color: tdLightBlue,
                    border: Border.all(color: tdBlack, width: 1),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    mainAxisAlignment:  MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Nama Lapangan",
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color:  tdBlack,
                          ),
                        ),
                      ),

                      text_detail("No Booking"),
                      text_detail("Nama Pemesan"),
                      text_detail("Alamat"),
                      text_detail("Jam Booking"),
                      text_detail("Tanggal Booking"),
                      text_detail("Tanggal Pembayaran"),
                      text_detail("Metode Pembayaran"),
                      text_detail("Total Pembayaran"),
                      text_detail("Bagian Lapangan"),

                      SizedBox(height: 20,)
                    ],
                  ),
                ), 

                SizedBox(height: 50,),
    
                // ElevatedButton(
                //   onPressed: () {
                    
                //   },

                //   style: ElevatedButton.styleFrom(
                //     foregroundColor: Colors.black, 
                //     backgroundColor: tdLightBlue,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(25),
                //       side: BorderSide(
                //         color: tdBlack,
                //         width: 1
                //       )
                //     )
                //   ),

                //   child: Text(
                //     "Bantuan",
                //     style: GoogleFonts.montserratAlternates(
                //       fontSize: 20,
                //       fontWeight: FontWeight.w500,
                //       color: tdBlack
                //     ),
                //   ))
              ],
            ),
          ),
        ),
      ),
    ); 
  }

  Padding text_detail(String x) {
    return Padding(
      padding: EdgeInsets.only(left: 8, top: 10, bottom: 10),
      child: Text(
        "$x : ",
        style: GoogleFonts.montserratAlternates(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: tdBlack
        ),
      ),
    );
  }
}