import 'package:flutter/material.dart';
import 'package:kerthik_app/modules/exam_module/exam_screen.dart';
import 'package:kerthik_app/modules/parent_flow/parent_home/home_Screen.dart';
import 'package:kerthik_app/modules/parent_flow/user/create_newPswd.dart';
import 'package:kerthik_app/modules/parent_flow/user/parent_register.dart';
import 'package:kerthik_app/modules/student_flow/student_home/student_dashboard.dart';
import 'package:kerthik_app/modules/student_flow/student_user/student_login.dart';
import 'package:kerthik_app/modules/student_flow/student_user/student_register.dart';
import 'package:kerthik_app/modules/welcome_module/welcome_index.dart';
import 'package:kerthik_app/utils/packages_used.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ExamScreen(),

        // WelcomeIndex(),
      );
      }
    ));
  }
}