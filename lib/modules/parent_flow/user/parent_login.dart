


import 'package:flutter/material.dart';
import 'package:kerthik_app/controller/parent_controller/parent_login_controller.dart';
import 'package:kerthik_app/controller/student_controller/student_login_controller.dart';
import 'package:kerthik_app/modules/parent_flow/user/forget_password.dart';
import 'package:kerthik_app/modules/parent_flow/user/parent_register.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';
import 'package:kerthik_app/widgets/custom_button.dart';

class ParentLogin extends StatelessWidget {
  ParentLogin({Key? key}) : super(key: key);

  ParentLoginController _parentLoginController = Get.put(ParentLoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _parentLoginController.parentloginKey,
              child: Column(
                children: [
                  SizedBox(height: 2.h,),
                  Image.asset('assets/images/logo.png',height: 10.h,fit: BoxFit.fill),
                  SizedBox(height: 5.h,),
                  Text('Welcome ', style: headingTxtStyle,),
                  SizedBox(height: 8.h,),
                  SizedBox(
                    width: 85.w,
                    child: TextFormField(
                      controller: _parentLoginController.mobile,
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
                  Divider(thickness: 2,color: btnclr,indent: 5.h,endIndent: 5.h,),

                  SizedBox(
                    width: 85.w,
                    child: TextFormField(
                      controller: _parentLoginController.password,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        hintText: 'Password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Divider(thickness: 2,color: btnclr,indent: 5.h,endIndent: 5.h,),
                  SizedBox(height: 2.h,),
                  CustomButton(
                    text: 'SIGN IN',
                    onPressed: () {

                    } ,
                  ),
                  SizedBox(height: 2.h,),
                  TextButton(
                    onPressed: (){
                      Get.to(() => ForgetPassword());
                    },
                    child: const Text('Forget Password ', style:  TextStyle(
                      fontSize: 17.0,
                      color: btnclr,
                      fontWeight: FontWeight.w700,
                    ),),
                  ),
                  SizedBox(height: 3.h,),
                  const Text(' -OR- ', style:  TextStyle(
                    fontSize: 20.0,
                    color: hinttxtclr,
                    fontWeight: FontWeight.w700,
                  ),),
                  SizedBox(height: 3.h,),
                  Image.asset('assets/images/sf.png',width: 85.w,fit: BoxFit.cover),
                  SizedBox(height: 3.h,),
                  Image.asset('assets/images/sg.png',width: 85.w,fit: BoxFit.cover),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      const Text("Don't have an account? ",style: TextStyle(
                        fontSize: 15.0,
                        color: hinttxtclr,
                        fontWeight: FontWeight.bold,
                      ),),

                      TextButton(
                        onPressed: (){
                          Get.to(() => ParentSignUp());
                        },
                        child: const Text(
                          ' Signup ',
                          style:  TextStyle(
                            fontSize: 17.0,
                            color: btnclr,
                            fontWeight: FontWeight.bold,
                          ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h,),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
