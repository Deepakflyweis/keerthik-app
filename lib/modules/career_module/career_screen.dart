
import 'package:flutter/material.dart';
import 'package:kerthik_app/modules/career_module/MyJobScreen.dart';
import 'package:kerthik_app/modules/career_module/ResumeScreen.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';
import 'package:kerthik_app/utils/text_style.dart';

class CareerScreen extends StatefulWidget {
  const CareerScreen({Key? key}) : super(key: key);

  @override
  State<CareerScreen> createState() => _CareerScreenState();
}

class _CareerScreenState extends State<CareerScreen> {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: whiteclr,
            elevation: 0,
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios,size: 25,color: blckclr,)),
            title: Text('Careers', style: headingTxtStyle),
            centerTitle: true,
            bottom:  TabBar(
              tabs:  const [
                Tab(text: "My Resume"),
                Tab(text: "My Jobs",)
              ],
              unselectedLabelColor: blckclr,
              unselectedLabelStyle: TxtStyleN,
              labelColor: lblclr,
              labelStyle: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

            body:  const TabBarView(
              children: [
                ResumeScreen(),
                MyJobScreen(),
              ],
            ) ,
        )
    );
  }


}
