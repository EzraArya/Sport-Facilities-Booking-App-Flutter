import 'package:ease_booking_app/component/background.dart';
import 'package:ease_booking_app/constant/colors.dart';
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
                  height: 650,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 230,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: tdLightBlue,
                                  border: Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Text(
                                    "Lapangan $index",
                                    style: GoogleFonts.montserratAlternates(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => productScreen(),));
                                },
                                child: Container(
                                  width: 80,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: tdLightBlue,
                                    border: Border.all(color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Book",
                                      style: GoogleFonts.montserratAlternates(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
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
