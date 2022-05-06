
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {


  var gradients = [
    const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors:  [
      Color(0xFF4983E6),Color(0xff0045BB),
    ]) ,
    const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors:  [
          Color(0xFF52C234),Color(0xff026B09),
        ]),
    const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors:  [
          Color(0xFF11998E),Color(0xff38EF7D),
        ]),
    const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors:  [
          Color(0xFFED213A),Color(0xff93291E),
        ]),
    const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors:  [
          Color(0xFFF12711),Color(0xffF5AF19),
        ]),const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors:  [
          Color(0xFF34C2B8),Color(0xff1DA488),
        ]),
  ];


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
          title: Text('Exams', style: headingTxtStyle),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h,),
                Text('OnGoing Exam',style: TxtStyleN,),
                SizedBox(height: 2.h,),

                ///ongoing exam
                SizedBox(
                  height: 20.h,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 10),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: gradients[Random().nextInt(gradients.length)]
                              ),
                              width: 60.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        height: 8.h,
                                        width: 10.w,
                                        child: Image.asset('assets/images/test.png',
                                          fit: BoxFit.fill,
                                          errorBuilder:  (context,_,__)  => Container(
                                            height: 100,
                                            color: Colors.grey.shade200,
                                            child: const Text("No Image"),
                                          ),
                                        ),
                                      ),

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Maths',
                                              style: TxtStyleW,
                                          ),
                                          Text('Code : ' + " 126eul",
                                              style: TxtStyleN,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Text('Today, 9:00Am'),
                                ],
                              ),
                            ),

                          ),
                        );
                      }
                  ),
                ),
                SizedBox(height: 2.h,),
                Text('Upcoming Exam',style: TxtStyleN,),
                SizedBox(height: 2.h,),

                ///upcoming exam
                SizedBox(
                  height: 20.h,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 10),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: gradients[Random().nextInt(gradients.length)]
                              ),
                              width: 60.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        height: 8.h,
                                        width: 10.w,
                                        child: Image.asset('assets/images/test.png',
                                          fit: BoxFit.fill,
                                          errorBuilder:  (context,_,__)  => Container(
                                            height: 100,
                                            color: Colors.grey.shade200,
                                            child: const Text("No Image"),
                                          ),
                                        ),
                                      ),

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Maths',
                                            style: TxtStyleW,
                                          ),
                                          Text('Code : ' + " 126eul",
                                            style: TxtStyleN,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Text('Today, 9:00Am'),
                                ],
                              ),
                            ),

                          ),
                        );
                      }
                  ),
                ),

                SizedBox(height: 2.h,),
                Text('Past Exam',style: TxtStyleN,),

                ///Past exam
                SizedBox(height: 2.h,),
                SizedBox(
                  height: 20.h,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 10),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: gradients[Random().nextInt(gradients.length)]
                              ),
                              width: 60.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        height: 8.h,
                                        width: 10.w,
                                        child: Image.asset('assets/images/test.png',
                                          fit: BoxFit.fill,
                                          errorBuilder:  (context,_,__)  => Container(
                                            height: 100,
                                            color: Colors.grey.shade200,
                                            child: const Text("No Image"),
                                          ),
                                        ),
                                      ),

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Maths',
                                            style: TxtStyleW,
                                          ),
                                          Text('Code : ' + " 126eul",
                                            style: TxtStyleN,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Text('Today, 9:00Am'),
                                ],
                              ),
                            ),

                          ),
                        );
                      }
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }


}
