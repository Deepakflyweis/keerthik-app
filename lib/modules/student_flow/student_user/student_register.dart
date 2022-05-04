
import 'package:flutter/cupertino.dart';
import 'package:kerthik_app/controller/student_controller/student_signup_controller.dart';
import 'package:kerthik_app/modules/student_flow/student_user/otp_verify.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';
import 'package:kerthik_app/widgets/custom_button.dart';
import 'package:kerthik_app/widgets/custom_textfield.dart';

class StudentSignUp extends StatelessWidget {
    StudentSignUp({Key? key}) : super(key: key);

  StudentSignUpController _studentSignUpController = Get.put(StudentSignUpController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteclr,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios,size: 25,)),
          title: Text('Create Account', style: headingTxtStyle),
          centerTitle: true,
        ),
        body: Form(
          key: _studentSignUpController.studentSignupKey,
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(left: 15.0,right: 12,top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Center(
                     child: CircleAvatar(backgroundColor: blckclr,radius: 8.h),),
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
                  Text('*Make Sure you select the profile of your child',style: hintTxtStyle,),
                  SizedBox(height: 3.h,),
                  Text('Your Name',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _studentSignUpController.yourname,
                    label: 'Enter Your Name',
                  ),
                  SizedBox(height: 2.h,),

                  Text('Student Name',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _studentSignUpController.studentname,
                    label: 'Enter Student Name',
                  ),
                  SizedBox(height: 2.h,),

                  Text('Class',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _studentSignUpController.studentclass,
                    label: 'Class',
                  ),
                  SizedBox(height: 2.h,),

                  Text('Roll Number',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _studentSignUpController.rollno,
                    label: 'Enter Roll Number',
                  ),
                  SizedBox(height: 2.h,),

                  Text('Mobile Number',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _studentSignUpController.mob,
                    label: 'Enter Mobile Number',
                  ),
                  SizedBox(height: 2.h,),

                  Text('Password',style: TxtStyleN,),
                  SizedBox(height: 2.h,),
                  CustomTxtfield(
                    controller: _studentSignUpController.pswd,
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
