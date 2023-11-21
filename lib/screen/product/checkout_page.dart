import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/product/product_page.dart';
import 'package:ease_booking_app/screen/status/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class checkoutScreen extends StatefulWidget {
  const checkoutScreen({super.key});

  @override
  State<checkoutScreen> createState() => _checkoutScreenState();
}

class _checkoutScreenState extends State<checkoutScreen> {
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
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => productScreen(),));
                        }, 
                        icon: Icon(Icons.arrow_back_ios, size: 30,)
                      ),
                      
                      SizedBox(width: 50,)
                    ],
                ),

                Container(
                  width: 350,
                  height: 600,
                  decoration: BoxDecoration(
                    border: Border.all(color: tdDarkerBlue, width: 1),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Center(
                        child: Text(
                          "Nama Lapangan",
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 25,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Jam : ",
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 20,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Alamat : ",
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 20,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Lapangan : ",
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 20,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Nama : ",
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 20,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ),

                      SizedBox(height: 50,),

                      Center(
                        child: Text(
                          "Payment Method",
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 25,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),

                      SizedBox(height: 15,),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width : 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: tdLightBlue,
                                border: Border.all(color: tdBlack, width: 1),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  
                                }, 
                                icon: Icon(
                                  Icons.payment,
                                  size: 60,
                                )),
                            ),

                            SizedBox(width: 30,),

                            Container(
                              width : 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: tdLightBlue,
                                border: Border.all(color: tdBlack, width: 1),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  
                                }, 
                                icon: Icon(
                                  Icons.payments_outlined,
                                  size: 60,
                                )),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),

                      Center(
                        child : SizedBox(
                          width: 230,
                          height: 40,
                          child: Container(
                            child: ElevatedButton(
                              onPressed: () {
                                _toggleActive();
                                Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context) => const checkoutScreen())
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
                                'Click for more method',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Total : ",
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 25,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Center(
                        child : SizedBox(
                          width: 200,
                          height: 50,
                          child: Container(
                            child: ElevatedButton(
                              onPressed: () {
                                _toggleActive();
                                Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context) => const successScreen())
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
                                'Checkout',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                                ),
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
