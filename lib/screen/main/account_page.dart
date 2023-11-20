import 'package:ease_booking_app/component/background.dart';
import 'package:ease_booking_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class accountScreen extends StatefulWidget {
  const accountScreen({super.key});

  @override
  State<accountScreen> createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {
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
                        icon: Icon(Icons.arrow_back_ios, size: 30,)
                      ),
                      SizedBox(width: 50,)
                    ],
                ),

                Center(
                  child: Icon(
                    Icons.account_circle,
                    size: 100,
                  ),
                ),

                SizedBox(height: 25,),

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
                          labelText: 'Full Name',
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

                  const SizedBox(height: 25),

                  //Username TextField
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
                          labelText: 'Tanggal Lahir',
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

                  const SizedBox(height: 25),

                  //Username TextField
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
                          labelText: 'Alamat',
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

                  const SizedBox(height: 25),

                  // email textfield
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
                          labelText: 'Email',
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

                  SizedBox(height: 25,),

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
                          labelText: 'No Handphone',
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

                  SizedBox(height: 50,),

                  SizedBox(
                  width: 200,
                  height: 50,
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        
                      }, 
                      style: ElevatedButton.styleFrom(
                        foregroundColor: tdBlack, backgroundColor: _isActive ? tdDarkerBlue : tdLightBlue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          side : BorderSide(color:  Colors.black),
                        )
                      ),
                      child: Text(
                        'Update',
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
        ),
      ),
    );
  }
}
