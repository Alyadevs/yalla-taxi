import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wassalni/utils/app_colors.dart';
import 'package:wassalni/widgets/green-intro-widget.dart';
import 'package:wassalni/widgets/otp_verification_widget.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen ({Key? key}): super(key: key);
  @override
  State<OtpVerificationScreen> createState()=> _OtpVerificationScreen();

}
class _OtpVerificationScreen extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        children:[
             
           Stack(

            children: [
             greenIntroWidget(),
             Positioned(
              top:60,
              left:30,
              child: InkWell(
                onTap:(){
                  Get.back();
                },
            child :Container(
              width : 45,
              height: 45,
              decoration: const BoxDecoration(
                  shape:BoxShape.circle,
                  color:Colors.white,
              ),
              child:const Icon(Icons.arrow_back,color:AppColors.greenColor,size:20,),
             ),
              ),
             )
        ],
      ),
        const SizedBox(
          height:50,

        ) ,
       otpVerificationWidget(),
        ],
      ),
    );
  }
}