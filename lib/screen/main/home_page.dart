import 'package:ease_booking_app/screen/main/category_page.dart';
import 'package:ease_booking_app/screen/main/search_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
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
  final TextEditingController _searchController = TextEditingController();
  Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Backgrounds(
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
          
                      Container(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(0, 126, 167, 1),
          selectedItemColor: tdBlack,
          unselectedItemColor: tdWhite,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 40,),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.chrome_reader_mode, size: 40,), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat, size: 40,), label: '')
          ],
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