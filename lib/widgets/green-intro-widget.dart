
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

Widget greenIntroWidget() {
  return Container(
    width: Get.width,
   decoration: const BoxDecoration(
    image:DecorationImage(
      image: AssetImage('assets/wassalni.jpg'),
      fit:BoxFit.cover
      
    )
   ),
   height: Get.height*0.6,

   child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
       SvgPicture.asset('assets/taxi.svg'),
      
      // SvgPicture.asset('assets/taxi.svg'),
       const SizedBox(
        height: 20,
       ),
    ]),
  );
  }
 Widget greenIntroWidgetWithoutLogos() {
  return Container(
    width: Get.width,
    height: Get.height * 0.1, // Adjusted height
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/wassalni.jpg'),
        fit: BoxFit.fill,
      ),
    ),
    margin: EdgeInsets.only(bottom: Get.height * 0.05), // Adjusted margin
    child: Center(
      child: Text(
        "Profile Settings",
        style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 10, 6, 6),
        ),
      ),
    ),
  );
}
