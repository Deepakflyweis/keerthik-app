
import 'package:flutter/material.dart';
import 'package:kerthik_app/controller/parent_controller/forget_password_controller.dart';
import 'package:kerthik_app/modules/student_flow/student_user/otp_verify.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';
import 'package:kerthik_app/widgets/custom_button.dart';

class ForgetPassword extends StatelessWidget {
   ForgetPassword({Key? key}) : super(key: key);

  ForgetPasswordController _forgetPasswordController = Get.put(ForgetPasswordController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteclr,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
               icon: Icon(Icons.arrow_back_ios, size: 25,color: blckclr)),

          title: Text('Forget Password', style: headingTxtStyle),
          centerTitle: true,
        ),
        body: Form(
          key: _forgetPasswordController.forgetPswdKey,
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              const Center(
                child: Text("Enter Your Mobile Number to get the ",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: blckclr,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              const Center(
                child: Text(" verification code",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: blckclr,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(height: 3.h,),
              SizedBox(
                width: 85.w,
                child: TextFormField(
                  controller: _forgetPasswordController.mobile,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field can\'t be empty';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    hintText: 'Mobile No',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Divider(
                thickness: 2, color: btnclr, indent: 5.h, endIndent: 5.h,),
              SizedBox(height: 5.h,),
              CustomButton(
                onPressed: () {
                  Get.to(() => StudentOtpVerify());
                },
                text: 'Next',
              )
            ],
          ),
        ),
      ),
    );
  }

}
