  
import 'package:flutter/material.dart';
import 'package:kerthik_app/modules/parent_flow/user/parent_login.dart';
import 'package:kerthik_app/modules/student_flow/student_user/student_login.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';

  class WelcomeIndex extends StatefulWidget {
    const WelcomeIndex({Key? key}) : super(key: key);
  
    @override
    State<WelcomeIndex> createState() => _WelcomeIndexState();
  }
  
  class _WelcomeIndexState extends State<WelcomeIndex> {

    PageController controller = PageController();

    final List<Widget> _list = <Widget>[
      Image.asset('assets/images/w1.png', height: 80.h,width: 100.w,fit: BoxFit.fill,),
      Image.asset('assets/images/w2.png', height: 80.h,width: 100.w,fit: BoxFit.fill,),
      Image.asset('assets/images/w3.png', height: 80.h,width: 100.w,fit: BoxFit.fill,),

    ];
    int _curr=0;

    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
             Container(
               height: 60.h,
               width: 100.w,
               decoration: const BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment.topCenter,
                     end: Alignment.bottomCenter,
                   colors: [
                     Color(0xFF11998E),
                     Color(0xFF11998E),
                     Color(0xFF38EF7D),
                   ]
                 )
               ),
               child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      children:
                      _list,
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      onPageChanged: (num){
                        setState(() {
                          _curr=num;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          _list.length, (index) => buildDot(index, context))),
                  SizedBox(height: 10.h),
                ],
            ),
             ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 40.h,
                  width: 100.h,
                  alignment: Alignment.center,
                  decoration:  BoxDecoration(
                    color: whiteclr,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20)
                    ),
                    border: Border.all(width: 1.0,color: Colors.grey)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5.h),
                      Text('Please select who you are',style: TxtStyleN,),
                      SizedBox(height: 3.h),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                          GestureDetector(
                              onTap: (){
                                Get.offAll(() =>   StudentLogin());
                              },
                              child: Image.asset('assets/images/student.png',width: 40.w,fit: BoxFit.fitWidth,)),
                          GestureDetector(
                            onTap: (){
                              Get.offAll(() =>   ParentLogin());
                            },
                              child: Image.asset('assets/images/parent.png',width: 40.w,fit: BoxFit.fitWidth,)
                          ),

                        ],
                      )
                    ],
                  ),

                ),
              )
      ],
          ),
        ),
      );
    }

    Container buildDot(int index, BuildContext context) {
      return Container(
        width: 10,
        height: _curr == index ? 10 : 10,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: _curr == index ? Color(0xFF5A38FD) : Color(0xffffffff),
        ),
      );
    }
  }
  