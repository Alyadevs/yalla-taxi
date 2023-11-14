import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wassalni/views/otp_verification_screen.dart';
import 'package:wassalni/widgets/green-intro-widget.dart';
import 'package:wassalni/widgets/login-widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final countryPicker = const  FlCountryCodePicker();
  CountryCode countryCode =const CountryCode(name:'Pakistan',code:'PK',dialCode: "+92");
  onSubmit(String? input){
Get.to(()=> OtpVerificationScreen(countryCode.dialCode+input!));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
      height: Get.height,
      child:SingleChildScrollView(
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        greenIntroWidget(),
        const SizedBox(height:50,),
         loginWidget(countryCode,()async{
          final code=await countryPicker.showPicker(context: context);
          if(code != null) countryCode=code;
          setState(() {
            
          });
         },onSubmit),
       ],
       ),
       ),
      ),
    );
  }
}
