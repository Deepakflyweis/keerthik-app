import 'package:flutter/material.dart';
import 'package:kerthik_app/modules/career_module/career_screen.dart';
import 'package:kerthik_app/modules/quiz_module/quiz_question.dart';
import 'package:kerthik_app/modules/result_module/result_screen.dart';
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
        home: WelcomeIndex(),

      );
      }
    ));
  }
}