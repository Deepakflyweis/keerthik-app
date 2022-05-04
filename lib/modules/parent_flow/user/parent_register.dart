


import 'package:flutter/cupertino.dart';
import 'package:kerthik_app/controller/parent_controller/parent_signup_controller.dart';
import 'package:kerthik_app/controller/student_controller/student_signup_controller.dart';
import 'package:kerthik_app/modules/student_flow/student_user/otp_verify.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';
import 'package:kerthik_app/widgets/custom_button.dart';
import 'package:kerthik_app/widgets/custom_textfield.dart';

class ParentSignUp extends StatelessWidget {
  ParentSignUp({Key? key}) : super(key: key);

  ParentSignUpController _parentSignUpController = Get.put(ParentSignUpController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteclr,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios,size: 25,color: blckclr,)),
          title: Text('Create Account', style: headingTxtStyle),
          centerTitle: true,
        ),
        body: Form(
          key: _parentSignUpController.parentSignupKey,
          child: SingleChildScrollView(
            child: Padding(
              padding:  const EdgeInsets.only(left: 15.0,right: 15,top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child:  CircleAvatar(backgroundColor: blckclr,radius: 8.h),),
                  SizedBox(height: 1.h,),
                  Center(
                    child: TextButton(
                      onPressed: (){},
                      child: const Text('Select Profile',
                        style:  TextStyle(
                          fontSize: 17.0,
                          color: btnclr,
                          fontWeight: FontWeight.bold,
                        ), ),
                    ),
                  ),
                  SizedBox(height: 3.h,),
                  Text('Name',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _parentSignUpController.name,
                    label: 'Enter Name',
                  ),
                  SizedBox(height: 2.h,),

                  Text('Class',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _parentSignUpController.classs,
                    label: 'Enter Class',
                  ),
                  SizedBox(height: 2.h,),

                  Text('Roll Number',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _parentSignUpController.rollno,
                    label: 'Enter Roll Number',
                  ),
                  SizedBox(height: 2.h,),

                  Text('Mobile Number',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _parentSignUpController.mob,
                    label: 'Enter Mobile Number',
                  ),
                  SizedBox(height: 2.h,),

                  Text('Password',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _parentSignUpController.pswd,
                    label: 'Enter Password',
                  ),
                  SizedBox(height: 5.h,),
                  CustomButton(
                    onPressed: (){
                      Get.to(() => StudentOtpVerify());
                    },
                    text: 'Next',
                  ),
                  SizedBox(height: 3.h,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
