import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:path/path.dart' as Path;
import 'package:wassalni/Controller/auth_controller.dart';
import 'package:wassalni/utils/app_colors.dart';
import 'package:wassalni/widgets/green-intro-widget.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController homeController = TextEditingController();
  TextEditingController businessController = TextEditingController();
  TextEditingController shopController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Get.height * 0.4,
              child: Stack(
                children: [
                  greenIntroWidgetWithoutLogos(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child:Container(
                      width:120,
                      height:120,
                      margin:const EdgeInsets.only(bottom:20),
                      decoration:const BoxDecoration(
                        shape:BoxShape.circle,
                        color:Color(0xffD6D6D6)
                        ),
                        child: const Center(
  child: Icon(
    Icons.camera_alt_outlined,
    size: 40,
    color: Colors.white,
  ),
)



                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height:20,
            
            ),
            Container(padding:EdgeInsets.symmetric(horizontal:23),
            child:Column(children: [
              TextFieldWidget('Name',Icons.person_outlined,nameController),
              const SizedBox(
                height:10,
              ),
              TextFieldWidget('Home Adress',Icons.home_outlined,homeController),
              const SizedBox(
                height:10,
              ),
              TextFieldWidget('Business Adress',Icons.card_travel,businessController),
              const SizedBox(
                height:10,
              ),
               TextFieldWidget('Shopping Center',Icons.shopping_cart_outlined,shopController),
               const SizedBox(height:30,
               ),
               greenButton('Submit',(){}),
            //  )
            ],
            ),
            ),
        ]),
      ),
    );
  }

 
 
 Widget TextFieldWidget(String title, IconData iconData, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: const Color(0xffA7A7A7),
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      Container(
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 1,
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
          controller: controller, // Add this line to link the controller
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: const Color(0xffA7A7A7),
          ),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                iconData,
                color: AppColors.yelowColor,
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );
}

  Widget greenButton(String title, Function onPressed) {
    return MaterialButton(
      minWidth: Get.width,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: AppColors.yelowColor,
      onPressed: () => onPressed(),
      child: Text(
        title,
        style: GoogleFonts.poppins(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

