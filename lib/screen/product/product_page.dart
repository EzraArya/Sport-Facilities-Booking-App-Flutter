import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/product/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class productScreen extends StatefulWidget {
  const productScreen({super.key});

  @override
  State<productScreen> createState() => _productScreenState();
}

class _productScreenState extends State<productScreen> {
  List <String> time = [
    "08.00",
    "09.00",
    "10.00",
    "11.00",
    "12.00",
    "13.00",
    "14.00",
    "15.00",
    "16.00"
  ];
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
              mainAxisAlignment: MainAxisAlignment.start,
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
                        "Nama Product",
                        style : GoogleFonts.montserratAlternates(
                          color: tdBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        )
                      ),
                      SizedBox(width: 50,)
                    ],
                  ),
                SizedBox(height: 10,),

                Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: tdBlack, width: 1), 
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/F9ReKz4b0AAv3FI.jpg', fit: BoxFit.cover,)
                  ),
                ),
                
                SizedBox(height: 10,),

                Center(
                  child: Text(
                    "Alamat Lapangan",
                    style : GoogleFonts.montserratAlternates(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 70, right: 70, top: 20, bottom: 20),
                  child: Column(
                    children: [
                      GridView.builder(
                        itemCount: time.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1.5
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              
                            },
                            child: Container(
                              height: 10,
                              width: 10,
                              margin: EdgeInsets.only(left: 8, right: 8, top : 8, bottom: 8),
                              decoration: BoxDecoration(
                                color: tdWhite,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: tdBlack,
                                  width: 1
                                )
                              ),
                              child: Center(
                                child: Text(
                                  time[index],
                                  style: GoogleFonts.montserratAlternates(
                                    fontSize: 20,
                                    fontWeight:FontWeight.w500
                                  ),
                                )
                              ),
                            ),
                          );
                        },
                      ),

                      SizedBox(height: 15,),

                      SizedBox(
                        width: 150,
                        height: 50,
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
                              'Book',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
