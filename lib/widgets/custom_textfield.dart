
import 'package:flutter/cupertino.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/text_style.dart';

import '../utils/packages_used.dart';

class CustomTxtfield extends StatelessWidget {

   CustomTxtfield({ required this.controller,
       required this.label, Key? key})
      : super(key: key);

   String label;
   TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 88.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(width: 1.0,color: Colors.black12,),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: TextFormField(
        controller: controller,
         validator: (value) {
          if (value!.isEmpty) {
            return 'Field can\'t be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          constraints: BoxConstraints(maxWidth: 100.w),
         contentPadding: EdgeInsets.all(15),
          border: InputBorder.none,
          hintText: label,
          hintStyle: hintTxtStyle,
        ),
      ),
    );
  }
}
