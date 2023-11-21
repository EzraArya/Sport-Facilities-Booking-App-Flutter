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
  var _selectedPaymentMethod;
  
  void _toggleActive() {
    setState(() {
      _isActive = !_isActive;
      _isActive = !_isActive;
    });
  }

  final List <String> _paymentMethod = [
    "Bank 1",
    "Bank 2",
    "Bank 3",
    "Bank 4",
    "Bank 5",
  ];

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
                    color: tdWhite,
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

                      SizedBox(height: 20,),

                      Container(
                        margin: EdgeInsets.only(left: 4.0, right: 4.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,),
                          child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "Metode Pembayaran",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                          
                                      TextButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            useSafeArea: true,
                                            barrierColor: Colors.black26,
                                            backgroundColor: Colors.white,
                                            isScrollControlled: true,
                                            context: context, 
                                            builder: (context) {
                                              return Container(
                                                height: 600, 
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(20),
                                                    topRight: Radius.circular(20),
                                                  )
                                                ),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Row(
                                                          children : [
                                                            ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.pop(context);
                                                              },
                                                              style: ButtonStyle(
                                                                backgroundColor: MaterialStatePropertyAll(Colors.white),
                                                                elevation: MaterialStatePropertyAll(0),
                                                                  shape: MaterialStateProperty.all(
                                                                    RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.only(
                                                                        topLeft: Radius.circular(20),
                                                                        topRight: Radius.circular(20),
                                                                      )
                                                                    )
                                                                  ),
                                                                ), 
                                                              child: Icon(
                                                                Icons.close,
                                                                color: Colors.black,
                                                                size: 30,
                                                              )
                                                           ),
                                                
                                                           Text(
                                                              "Pilih Metode Pembayaran", 
                                                              style: GoogleFonts.montserrat(
                                                                fontSize: 20,
                                                                fontWeight: FontWeight.bold
                                                              ),
                                                            ),
                                                          ] 
                                                        ),
                                                  
                                                        Padding(
                                                          padding: const EdgeInsets.only(left : 20.0,right: 20.0, top: 8),
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                "Bank Transfer", 
                                                                style: GoogleFonts.montserrat(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold
                                                                ),
                                                              ),
                                                
                                                              Container(
                                                                height: 500, 
                                                                child: ListView.separated(
                                                                  shrinkWrap: true,
                                                                  itemBuilder: (context, index) {
                                                                    return InkWell(
                                                                      onTap: () {
                                                                        Navigator.pop(context);
                                                                      },
                                                                      child: Container(
                                                                        height: 40,
                                                                        child: ListTile(
                                                                          title: Text(
                                                                            "Bank $index",
                                                                            style: GoogleFonts.montserrat(
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w500
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }, 
                                                                  separatorBuilder: (context, index) {
                                                                    return Divider();
                                                                  }, 
                                                                  itemCount: 10),
                                                              ),
                                                
                                                              SizedBox(height: 2,),
                                                
                                                              Text(
                                                                "E-Wallet", 
                                                                style: GoogleFonts.montserrat(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold
                                                                ),
                                                              ),
                                                
                                                              Container(
                                                                height: 170, 
                                                                child: ListView.separated(
                                                                  shrinkWrap: true,
                                                                  itemBuilder: (context, index) {
                                                                    return InkWell(
                                                                      onTap: () {
                                                                        Navigator.pop(context);
                                                                      },
                                                                      child: Container(
                                                                        height: 40,
                                                                        child: ListTile(
                                                                          title: Text(
                                                                            "E-Wakket $index",
                                                                            style: GoogleFonts.montserrat(
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w500
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }, 
                                                                  separatorBuilder: (context, index) {
                                                                    return Divider();
                                                                  }, 
                                                                  itemCount: 3),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                  
                                                      ],
                                                    ),
                                                ),
                                              );
                                            },
                                          );
                                        }, 
                                        child: Text(
                                          "Lihat semua",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue
                                          ),
                                        )
                                      )
                                  ],
                                ),

                                Container(
                                  width: 450,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: tdBlack
                                  ),
                                ),

                                Container(
                                  height: 200,
                                  child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 50,
                                        child: RadioListTile<int>(
                                          value: index,
                                          groupValue: _selectedPaymentMethod,
                                          title: Row(
                                            children: [
                                              Icon(
                                                Icons.payment
                                              ),
                                              SizedBox(width: 10,),
                                              Text(
                                                _paymentMethod[index],
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ],
                                          ),
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedPaymentMethod = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.trailing,
                                        ),
                                      );
                                    }, 
                                    separatorBuilder: (context, index) {
                                      return Divider();
                                    }, 
                                    itemCount: _paymentMethod.length),
                                )
                              ],
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
