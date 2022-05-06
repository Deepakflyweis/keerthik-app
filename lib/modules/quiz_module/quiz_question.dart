import 'package:flutter/material.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
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
          title: Text('Science', style: headingTxtStyle),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Question : 5'),
                  Text('Time : 6 min')
                ],
              ),
              SizedBox(height: 2.h,),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Marks : ' + '10')),

              SizedBox(height: 2.h,),
              Row(
                children: [
                  Expanded(
                      child: Text("Q1. In publishing and graphic design,Lorem ipsum is a placeholder text commonly used to demonstrate thevisual form of a document or a typefacewithout relying on meaningful content.",
                      style: TxtStyleN,
                      ))
                ],
              ),
              SizedBox(height: 3.h,),
              Row(
                children:  [
                  Text('1.'),
                  SizedBox(width: 2.w,),
                  const Chip(
                      label: Text("In publishing and graphic design."),
                    elevation: 5,
                  ),
                ],
              ),

              SizedBox(height: 1.h,),
              Row(
                children:  [
                  Text('1.'),
                  SizedBox(width: 2.w,),
                  const Chip(
                      label: Text("In publishing and graphic design."),
                    elevation: 5,
                  ),
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                children:  [
                  Text('2.'),
                  SizedBox(width: 2.w,),
                  const Chip(
                      label: Text("In publishing and graphic design."),
                    elevation: 5,
                  ),
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                children:  [
                  Text('3.'),
                  SizedBox(width: 2.w,),
                  const Chip(
                      label: Text("In publishing and graphic design."),
                    elevation: 5,
                  ),
                ],
              ),SizedBox(height: 1.h,),
              Row(
                children:  [
                  Text('4.'),
                  SizedBox(width: 2.w,),
                  const Chip(
                      label: Text("In publishing and graphic design."),
                    elevation: 5,
                  ),
                ],
              ),
              SizedBox(height: 3.h,),
              InkWell(
                onTap: () {

                },
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
                      "SUBMIT",
                      style: TextStyle(fontWeight: FontWeight.bold,color: whiteclr,fontSize: 16.sp)),
                ),
              ),
              SizedBox(height: 3.h,),


            ],
          ),
        ),
      ),
    );
  }
}
