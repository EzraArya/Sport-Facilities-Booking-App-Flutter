import 'package:ease_booking_app/component/background.dart';
import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/main/order_detail_page.dart';
import 'package:ease_booking_app/screen/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class orderScreen extends StatefulWidget {
  const orderScreen({super.key});

  @override
  State<orderScreen> createState() => _orderScreenState();
}
class _orderScreenState extends State<orderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment :MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Riwayat",
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  height: 750,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Container(
                            decoration: BoxDecoration(
                              border:  Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(25),
                              color: tdLightBlue
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    "Nama Lapangan $index",
                                    style: GoogleFonts.montserratAlternates(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0, top: 2, bottom: 2),
                                  child: Text(
                                    "Nama Pemesan : ",
                                    style: GoogleFonts.montserratAlternates(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: tdBlack
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0, top: 2, bottom: 2),
                                  child: Text(
                                    "Alamat : ",
                                    style: GoogleFonts.montserratAlternates(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: tdBlack
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0, top: 2, bottom: 2),
                                  child: Text(
                                    "Jam Booking : ",
                                    style: GoogleFonts.montserratAlternates(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: tdBlack
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0, top: 2, bottom: 2),
                                  child: Text(
                                    "Tanggal Booking  : ",
                                    style: GoogleFonts.montserratAlternates(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: tdBlack
                                    )
                                  ),
                                ),
                                
                                SizedBox(height: 15,),

                                Center(
                                  child: Container(
                                    width: 150,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: tdBlack, backgroundColor: tdLightBlue,
                                      ),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => orderDetailPage(),));
                                      }, 
                                      child: Text(
                                        "More Detail",
                                        style: GoogleFonts.montserratAlternates(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: tdBlack
                                        ),
                                      )
                                    ),
                                  ),
                                ),
                                
                                SizedBox(height: 20,)
                              ],
                            ),
                          )
                          
                        );
                      },
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
