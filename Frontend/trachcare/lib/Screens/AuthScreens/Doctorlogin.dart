// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:trachcare/Api/API_funcation/Login.dart';
import 'package:trachcare/Api/DataStore/Datastore.dart';
import 'package:trachcare/Screens/Views/Doctor/Doctormainscreen.dart';
import 'package:trachcare/components/Titlebox.dart';
import 'package:trachcare/components/subhead.dart';
import "package:trachcare/components/custom_button.dart";

// import "package:flutter/cupertino.dart";

import '../../components/Loginform.dart';
import '../Views/Doctor/Bottomnavigator/Doctorsdashboard.dart';


class DoctorLogin extends StatelessWidget {
   DoctorLogin({super.key});
   
    final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    // The below funcation is Login Button fucation 
    void Login_btn(){
  if (_formkey.currentState!.validate()) {
    _formkey.currentState!.save();  
    LoginClassApi().DoctorLogin(context); 
    
  }
 
 
 }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },
        child: const Icon(CupertinoIcons.chevron_back),),
        
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Titlehead(titleName: "TRACHCARE"),
            const subhead(Subhead: "Doctor"),
            Gap(2.h),
            Container(
              width: double.infinity,
              height: 32.h ,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/2.png"))),
            ),
            Gap(2.5.h),
            loginForm(formKey: _formkey,Singup_button: Login_btn),
          ],),
        ),
      ),
    );
  }
}