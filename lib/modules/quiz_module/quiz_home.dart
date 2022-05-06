
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kerthik_app/modules/quiz_module/quiz_question.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';

class QuizHomeScreen extends StatefulWidget {
  const QuizHomeScreen({Key? key}) : super(key: key);

  @override
  State<QuizHomeScreen> createState() => _QuizHomeScreenState();
}

class _QuizHomeScreenState extends State<QuizHomeScreen> {

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
          title: Text('Quiz', style: headingTxtStyle),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 3.h,),
                Text('Pick a Subject',style: TxtStyleN),
                Text('Before we begin please select subject',style: hintTxtStyle),
                Text('you want to test yourself',style: hintTxtStyle),
                SizedBox(height: 2.h,),
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10,right: 10),
                        child: GestureDetector(
                          onTap: (){
                            Get.to(() => QuestionsScreen());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                gradient: gradients[Random().nextInt(gradients.length)]
                            ),
                            width: 60.w,
                            height: 12.h,
                            
                            child:
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 6.h,
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
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('Maths',
                                          style: TxtStyleW,
                                        ),

                                        Row(
                                          children: [
                                            Icon(Icons.timelapse_sharp),

                                            Text('3 min',
                                              style: TxtStyleN,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text('Marks : 80'),
                                        Text('Total Question : 15'),

                                      ],
                                    ),
                                    SizedBox(width: 1.w,)
                                  ],
                                ),



                          ),

                        ),
                      );
                    }
                ),

              ],

            ),
          ),
        ),
      ),
    );
  }
}
