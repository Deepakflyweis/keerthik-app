
import 'package:flutter/cupertino.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: 40.h,
                //width: 100.w,
                padding: EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),

                    // shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF11998E),
                          Color(0xFF38EF7D),
                        ]
                    )
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(Icons.arrow_back_ios,size: 25,color: whiteclr,)),
                        SizedBox(width: 22.w,),
                        const Center(child: Text('Result', style: TextStyle(
                          fontSize: 25.0,
                          color: whiteclr,
                          fontWeight: FontWeight.bold,
                        ))),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Text('5th grade scores',style: TxtStyleW,),
                    SizedBox(height: 2.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('Total Score',style: TxtStyleW,maxLines: 2),
                        SizedBox(width: 5.w,),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: circleclr,
                          child: CircleAvatar(
                            radius: 40,
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 3.h,),
                                  const Text('your rank is',style: TextStyle(
                                    fontSize: 11.0,
                                    color: whiteclr,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  Text('4th',style: TxtStyleW,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Text('81%',style: TxtStyleW,),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subject ',style: TxtStyleN,),
                        Text('Marks Obtained',style: TxtStyleN,),
                      ],
                    ),
                    SizedBox(height: 2.h,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Maths ',style: TxtStyleN,),
                        Text('60/100',style: TxtStyleN,),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Science ',style: TxtStyleN,),
                        Text('70/100',style: TxtStyleN,),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('English ',style: TxtStyleN,),
                        Text('70/100',style: TxtStyleN,),
                      ],
                    ),
                    SizedBox(height: 3.h,),

                    InkWell(
                      onTap: (){},
                      child: Container(

                        height: 6.h,
                        width: 60.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF4983E6),
                                  Color(0xFF0045BB),
                                ]
                            )
                        ),
                        child: Text(
                            "OKAY",
                            style: TextStyle(fontWeight: FontWeight.bold,color: whiteclr,fontSize: 16.sp)),
                      ),
                    ),
                    SizedBox(height: 3.h,),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
