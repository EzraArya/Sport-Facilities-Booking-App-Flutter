import 'package:ease_booking_app/component/background.dart';
import 'package:ease_booking_app/screen/main/account_page.dart';
import 'package:ease_booking_app/screen/main/category_page.dart';
import 'package:ease_booking_app/screen/main/search_page.dart';
import 'package:ease_booking_app/screen/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class homePageScreen extends StatefulWidget {
  const homePageScreen({super.key});

  @override
  State<homePageScreen> createState() => _homePageScreenState();
}

class _homePageScreenState extends State<homePageScreen> {
  List<String> images = [
    'assets/images/category/ph_basketball-duotone.png',
    'assets/images/category/ph_soccer-ball-duotone.png',
    'assets/images/category/fluent-emoji-high-contrast_pool-8-ball.png',
    'assets/images/category/emojione-monotone_tennis.png',
    'assets/images/category/material-symbols_sports-golf-outline.png',
    'assets/images/category/mdi_shuttlecock.png',
    'assets/images/category/noto_bowling.png',
    'assets/images/category/ph_volleyball-duotone.png',
  ];

  @override
  Widget build(BuildContext context) {
  int _selectedIndex = 0;
  final _pageController = PageController();

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
  }
  final TextEditingController _searchController = TextEditingController();
  Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: SingleChildScrollView(
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
                          controller: _searchController,
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
                            onSubmitted: (value) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => searchPage(),));
                            },
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
          
                    SizedBox(width: 15,),
          
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => accountScreen(),));
                      }, 
                      icon: Icon(
                        Icons.account_circle,
                        size: 50,
                      ))
                  ],
          
                  
                ),
          
                SizedBox(height: 15,),
          
                Container(
                  height: 0,
                  width: size.width /1.1,
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),
          
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 10),
                  child: Column(
                    children: [
                      GridView.builder(
                        itemCount: images.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => categoryScreen())
                              );
                            },
                            child: Container(
                              height: 15,
                                       width: 15,
                              margin: EdgeInsets.only(left: 5, right: 5, top : 5, bottom: 5),
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
                                child: Image.asset(
                                    images[index],
                                    fit: BoxFit.cover,
                                    height : 60,
                                    width : 60
                                  )
                                ),
                              ),
                          );
                        },
                      ),
          
                      SizedBox(height:20),
          
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => productScreen(),));
                        },
                        child: Container(
                          width: 350,
                          height: 420,
                          decoration: BoxDecoration(
                            border: Border.all(color: tdBlack, width: 1),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/F9ReKz8bEAAPghK.jpg',
                              fit: BoxFit.cover,
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
        )
        ),
    );
  }
}
