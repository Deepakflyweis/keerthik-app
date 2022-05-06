
import 'package:flutter/material.dart';
import 'package:kerthik_app/modules/exam_module/exam_screen.dart';
import 'package:kerthik_app/modules/notifications/notification_screen.dart';
import 'package:kerthik_app/modules/result_module/result_screen.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';

class ParentDashboard extends StatefulWidget {
  const ParentDashboard({Key? key}) : super(key: key);

  @override
  _ParentDashboardState createState() => _ParentDashboardState();
}

class _ParentDashboardState extends State<ParentDashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

              ///logo and logout button
              Row(
                children: [
                  Image.asset('assets/images/logo.png',
                    height: 12.h,
                    width: 30.w,
                    fit: BoxFit.cover,),
                  SizedBox(width: 25.w,),
                  Image.asset('assets/images/sign-out.png',
                    height: 5.h,
                    width: 8.w,
                    fit: BoxFit.fill,),
                  TextButton(
                    onPressed: (){},
                    child: const Text('Logout',style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ),
                  IconButton(
                    onPressed: (){
                      Get.to(() => NotificationScreen());
                    },
                    icon: Icon(
                      Icons.notifications,color: blckclr,size: 30,
                    ),
                  ),

                ],
              ),
              SizedBox(height: 2.h,),

              ///Name and profile
              Container(
                  width: 95.w,
                  height: 18.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFF9966),
                        Color(0xFFFF5E62),
                      ]
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 2.w),
                      CircleAvatar(
                        radius: 15.w,
                        child: Image.asset('assets/images/profile.png',fit: BoxFit.fill),
                      ),
                      SizedBox(width: 3.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.h),
                          Text('Rahul Jain',style: TxtStyleW,),
                          SizedBox(height: 2.h),
                          Container(
                            width: 20.w,
                            height: 3.h,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: whiteclr
                            ),
                            child: const Text('Class 5',
                                style: TextStyle(color: blckclr,fontWeight: FontWeight.w400)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              SizedBox(height: 1.h,),

              ///Results and Exams
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(() => ResultScreen());
                      },
                      child: Image.asset('assets/images/result.png',width: 50.w,height: 20.h,fit: BoxFit.fill,)),

                  GestureDetector(
                      onTap: () {
                        Get.to(() => ExamScreen());
                      },
                      child: Image.asset('assets/images/exams.png',width: 50.w,height: 20.h,fit: BoxFit.fill,)),
                ],
              ),

              // SizedBox(height: 1.h,),

              ///Tracket and Productivity
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {

                      },
                      child: Image.asset('assets/images/tracker.png',width: 50.w,height: 20.h,fit: BoxFit.fill,)),

                  GestureDetector(
                      onTap: () {

                      },
                      child: Image.asset('assets/images/prod.png',width: 50.w,height: 20.h,fit: BoxFit.fill,)),
                ],
              ),

              ///OverAllStatus
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                    onTap: () {

                    },
                    child: Image.asset('assets/images/overall.png',width: 50.w,height: 20.h,fit: BoxFit.fill,)),
              ),

              SizedBox(height: 2.h),

              ///offer
              Container(
                width: 90.w,
                height: 18.h,
                padding: EdgeInsets.all(10),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(width: 1.5, color: brdrgreen)
                ),
                child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Premium help you to succeed',style: TxtStyleN,),
                        SizedBox(height: 2.h),
                        Text('Buy annual subscription to get access all the feature in just ',style: hintTxtStyle,),
                        Text('₹ 500/ month',style: TextStyle( color: brdrgreen,fontWeight: FontWeight.w600),)
                      ],
                    )
              ),
              SizedBox(height: 3.h),
            ],
          ),
        ),
      ),
    );
  }
}
