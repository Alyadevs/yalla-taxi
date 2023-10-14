 import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wassalni/utils/app-constants.dart';
import 'package:wassalni/views/otp_verification_screen.dart';

import 'package:wassalni/widgets/text-widget.dart';
 Widget  otpVerificationWidget() {
 return Padding(
  padding :const EdgeInsets.symmetric(horizontal: 20),
  
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    
     children: [
        textWidget(text: AppConstants.helloNiceToMeetYou),
         textWidget(text: AppConstants.getMovingWithGreenTaxi,fontSize: 22,fontWeight:FontWeight.bold),
         const SizedBox(
          height:40,
         ),
         
         const SizedBox(
          height:40,
         ),
         Padding(
          padding:const EdgeInsets.symmetric(horizontal : 20),
          child:RichText(
          textAlign: TextAlign.center,
          text:  TextSpan(
            style: GoogleFonts.poppins(color:Colors.black,fontSize: 12),
            children: [
              const TextSpan(
                text:AppConstants.byCreating + " ",
              ),
            TextSpan(
              text: AppConstants.termsOfService + " ",
               style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              
               ),TextSpan(
                text: "and" ,
               ),
               TextSpan(
                text:AppConstants.privacyPolicy + " ",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
               )
          
            ],
          ),
          ),
          ),
     ],
     ),

   );

 }