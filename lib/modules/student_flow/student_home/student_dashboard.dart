
import 'package:flutter/material.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';

import '../../../utils/app_color.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({Key? key}) : super(key: key);

  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
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
                  SizedBox(width: 30.w,),
                  Image.asset('assets/images/sign-out.png',
                    height: 5.h,
                    width: 8.w,
                    fit: BoxFit.fill,),
                  const Text('Logout',style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 2.w,),
                  const Icon(
                    Icons.notifications,color: blckclr,size: 30,
                  ),

                ],
              ),
              SizedBox(height: 2.h,),

              ///Name and profile
              Container(
                width: 95.w,
                height: 15.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF52C234),
                        Color(0xFF026B09),
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

                      },
                      child: Image.asset('assets/images/result.png',width: 50.w,height: 20.h,fit: BoxFit.fill,)),

                  GestureDetector(
                      onTap: () {

                      },
                      child: Image.asset('assets/images/exams.png',width: 50.w,height: 20.h,fit: BoxFit.fill,)),
                ],
              ),

              ///career and quiz
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {

                      },
                      child: Image.asset('assets/images/career.png',width: 50.w,height: 20.h,fit: BoxFit.fill,)),

                  GestureDetector(
                      onTap: () {

                      },
                      child: Image.asset('assets/images/quiz.png',width: 50.w,height: 20.h,fit: BoxFit.fill,)),
                ],
              ),

              SizedBox(height: 2.h,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('    Trending',style: TxtStyleN,)),
              SizedBox(height: 5.h,),
             
            ///Bottom Adds and news
             SizedBox(
               height: 20.h,
               child: ListView.builder(
                   physics: BouncingScrollPhysics(),
                   scrollDirection: Axis.horizontal,
                   shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index){
                   return Padding(
                     padding: const EdgeInsets.only(left: 12.0,right: 10),
                     child: GestureDetector(
                       onTap: (){

                       },
                      child: SizedBox(
                        width: 60.w,
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.network('https://images.hindustantimes.com/img/2021/11/10/1600x900/ajit_doval_1636519089920_1636519110287.jpg',
                                  fit: BoxFit.fitWidth,
                                  errorBuilder:  (context,_,__)  => Container(
                                    height: 100,
                                    color: Colors.grey.shade200,
                                    child: const Text("No Image"),
                                  ),
                              ),
                              height: 10.h,
                              width: 60.w,
                            ),
                            const Text('The National Cyber Security Incident Response Exercise is being organized by the National Security … ',
                            maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text('date and time')
                          ],
                        ),
                      ),

                ),
               );
             }
           ),
          ),
              SizedBox(height: 5.h,),
              GestureDetector(
                  onTap: (){

                  },
                  child: Image.asset('assets/images/hnss.png',width: 80.w,height: 20.h,fit: BoxFit.fitWidth,)),
              SizedBox(height: 3.h,),
            ],
          ),
        ),
      ),
    );
  }
}
