
import 'package:flutter/material.dart';
import 'package:kerthik_app/controller/career_controller/resume_controller.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';
import 'package:kerthik_app/widgets/custom_textfield.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {

  ResumeController _resumeController = Get.put(ResumeController());

  List list = [
    "Ms Word", "MS Exel","Power point","Python","Communication","Android","Html","Marketing","Wordpress","Other"
  ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15,right: 15),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h,),
            Row(
                children: const [
                Expanded(
                    child: Text(
                  "Please fill details to create resume template "
                ))
              ],
            ),
            SizedBox(height: 2.h,),
            Text(
                "Personal Details",
              style: TxtStyleN,
            ),

            SizedBox(height: 2.h,),
            CustomTxtfield(
              controller: _resumeController.name,
              label: 'Enter Your Name',
            ),
            SizedBox(height: 2.h,),
            CustomTxtfield(
              controller: _resumeController.email,
              label: 'Enter Your Email',
            ),
            SizedBox(height: 2.h,),
            CustomTxtfield(
              controller: _resumeController.mobno,
              label: 'Enter Your Mobile no.',
            ),
            SizedBox(height: 2.h,),
            CustomTxtfield(
              controller: _resumeController.branch,
              label: 'Enter Your Branch',
            ),
            SizedBox(height: 2.h,),
            CustomTxtfield(
              controller: _resumeController.about,
              label: 'About Yourself',
            ),
            SizedBox(height: 2.h,),
            Text(
              "Qualification Details",
              style: TxtStyleN,
            ),
            SizedBox(height: 2.h,),


            ///Qualification Details
            CustomTxtfield(
              controller: _resumeController.tenth,
              label: 'Class 10 ',
            ),
            SizedBox(height: 2.h,),
            CustomTxtfield(
              controller: _resumeController.twelve,
              label: 'Class 12',
            ),
            SizedBox(height: 2.h,),
            CustomTxtfield(
              controller: _resumeController.graduation,
              label: 'Graduation (if any)',
            ),
            SizedBox(height: 2.h,),
            Text(
              "Skills",
              style: TxtStyleN,
            ),
            SizedBox(height: 1.h,),

            ///Skills Section


            Wrap(
              children:  [
                for(int i =0; i<8; i++)
                const Padding(
                  padding: EdgeInsets.only(left: 8.0,right: 8.0),
                  child: Chip(
                    label: Text('Ms Word'),
                    elevation: 5,
                    // padding: EdgeInsets.all(8),

                  ),
                ),
                const Chip(
                  label: Text('Other',),
                  elevation: 5,
                  padding: EdgeInsets.all(8),

                ),

              ],
            ),
            SizedBox(height: 2.h,),

            Text(
              "Work Experience (If any)",
              style: TxtStyleN,
            ),
            SizedBox(height: 2.h,),
            CustomTxtfield(
              controller: _resumeController.training,
              label: 'Training',
            ),
            SizedBox(height: 2.h,),
            CustomTxtfield(
              controller: _resumeController.internship,
              label: 'Intership',
            ),
            SizedBox(height: 4.h,),
            Center(
              child: InkWell(
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
            ),
            SizedBox(height: 4.h,),


          ],
        ),
      ),
    );
  }
}
