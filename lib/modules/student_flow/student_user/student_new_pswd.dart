



import 'package:flutter/cupertino.dart';
import 'package:kerthik_app/controller/student_controller/create_newPswd_controller.dart';
import 'package:kerthik_app/modules/student_flow/student_user/student_login.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';
import 'package:kerthik_app/widgets/custom_button.dart';

class StudentNewPswd extends StatelessWidget {
  StudentNewPswd({Key? key}) : super(key: key);

  CreateNewPswdController _createNewPswdController = Get.put(CreateNewPswdController());


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

          title: Text('Create New Password', style: headingTxtStyle),
          centerTitle: true,
        ),
        body: Form(
          key: _createNewPswdController.createnewKey,
          child: Column(
            children: [
              SizedBox(height: 2.h,),
              SizedBox(
                width: 85.w,
                child: TextFormField(
                  controller: _createNewPswdController.newPswd,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field can\'t be empty';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    hintText: 'New Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Divider(
                thickness: 1.5, color: btnclr, indent: 5.h, endIndent: 5.h,),

              SizedBox(
                width: 85.w,
                child: TextFormField(
                  controller: _createNewPswdController.confirmPswd,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field can\'t be empty';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    hintText: 'Confirm Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Divider(
                thickness: 1.5, color: btnclr, indent: 5.h, endIndent: 5.h,),
              SizedBox(height: 10.h,),
              CustomButton(
                text: 'CREATE PASSWORD',
                onPressed: (){
                  Get.offAll(() => StudentLogin());
                },
              ),
              SizedBox(height: 2.h,),
            ],
          ),
        ),
      ),
    );
  }
}
