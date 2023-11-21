import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/main/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum iconFilter { filter, distance, price, time, setting}

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Backgrounds(
        child: SafeArea(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => homeScreen(),));                        }, 
                        icon: Icon(Icons.arrow_back_ios)
                      ),
                      Container(
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
                      SizedBox(width: 50,)
                    ],
                  ),

                  SizedBox(height: 10,),

                  Center(
                    child: FilterChipExample(),
                  ),
                  
                  SizedBox(height: 10,),
                  
                   Container(
                    // height: 400,
                     child: Expanded(
                       child: ListView.builder(
                          shrinkWrap: false,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Card(
                                  color: tdLightBlue,
                                  shadowColor: tdBlack,
                                  child: ListTile(
                                    title: Text(
                                      "Lapangan $index",
                                      style: GoogleFonts.montserratAlternates(
                                        fontSize: 20,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "Alamat Lapangan",
                                      style: GoogleFonts.montserratAlternates(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w200
                                      ),
                                    ),
                                  ),
                                
                              ),
                            );
                          }, 
                          
                          itemCount: 20
                        ),
                     ),
                   ),
                  
              ],
            
          )
        ),
      ),
    );
  }
}

class FilterChipExample extends StatefulWidget {
  const FilterChipExample({super.key});

  @override
  State<FilterChipExample> createState() => _FilterChipExampleState();
}

class _FilterChipExampleState extends State<FilterChipExample> {
  Set<iconFilter> filters = <iconFilter>{};
  List <IconData> iconList = [
    Icons.filter_list,
    Icons.location_on,
    Icons.money,
    Icons.av_timer,
    Icons.settings
  ];

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Wrap(
            spacing: 5.0,
            children: iconFilter.values.toList().asMap().entries.map((entry) {
              int idx = entry.key;
              iconFilter exercise = entry.value;
              return ChoiceChip(
                showCheckmark: false,
                label: Icon(iconList[idx]),
                selected: filters.contains(exercise),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      filters.clear();
                      filters.add(exercise);
                    } else {
                      filters.remove(exercise);
                    }
                  });
                },
              );
            }).toList(),
          ),
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
