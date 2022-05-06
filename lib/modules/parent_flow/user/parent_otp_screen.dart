


import 'package:flutter/material.dart';
import 'package:kerthik_app/controller/student_controller/otp_controller.dart';
import 'package:kerthik_app/modules/parent_flow/parent_home/home_Screen.dart';
import 'package:kerthik_app/modules/parent_flow/user/parent_login.dart';
import 'package:kerthik_app/modules/student_flow/student_user/student_login.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/text_style.dart';
import 'package:kerthik_app/widgets/custom_button.dart';
import 'package:kerthik_app/widgets/otp_input.dart';

import '../../../utils/packages_used.dart';

class ParentOtpVerify extends StatefulWidget {
  const ParentOtpVerify({Key? key}) : super(key: key);

  @override
  _ParentOtpVerifyState createState() => _ParentOtpVerifyState();
}

class _ParentOtpVerifyState extends State<ParentOtpVerify> {

  final VerifyController _verifyController = Get.put(VerifyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteclr,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios,size: 25,color: blckclr,)),
          title: Text('Verification', style: headingTxtStyle),
          centerTitle: true,
        ),
        body: Form(
          key: _verifyController.otpkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 4.h),
                const Center(
                  child: Text(" A 5-Digit Pin has been sent to your ",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: blckclr,
                        fontWeight: FontWeight.normal,
                      )),
                ),
                const Center(
                  child: Text(" phone no.Enter it below to continue",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: blckclr,
                        fontWeight: FontWeight.normal,
                      )),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      OtpInput(
                        validator: _verifyController.otpvalidator,
                        controller: _verifyController.otp[i],
                        autoFocus: i == 0 ? true : false,
                      )
                  ],
                ),
                SizedBox(height: 10.h),
                CustomButton(
                  onPressed: (){
                    Get.to(() => ParentLogin());
                  },
                  text: 'Verify',
                ),
                SizedBox(height: 2.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
