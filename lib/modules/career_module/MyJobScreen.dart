
import 'package:flutter/material.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';

class MyJobScreen extends StatefulWidget {
  const MyJobScreen({Key? key}) : super(key: key);

  @override
  State<MyJobScreen> createState() => _MyJobScreenState();
}

class _MyJobScreenState extends State<MyJobScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(height: 4.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Expanded(
                  child: Text(
                "We have created a resumes for you , Either You can download or share "
              )),
              IconButton(
                  onPressed: (){

                  },
                  icon: const Icon(Icons.download_rounded,size: 30,color: blckclr,))
            ],
          )
        ],
      ),
    );
  }
}
