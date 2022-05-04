

import 'package:flutter/cupertino.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/packages_used.dart';

class CustomButton extends StatelessWidget {
  var onPressed;
  var text;

  CustomButton
      ({Key? key,@required this.onPressed, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)) ,
        textStyle: TextStyle(color: whiteclr,fontWeight: FontWeight.w700,fontSize: 16),
        child: Container(
          height: 6.h,
          width: 85.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
             gradient: const LinearGradient(
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
               colors: [
                 Color(0xFF0045BB),
                 Color(0xFF4983E6),
               ]
             ),
            // border: Border.all(width: 1,),
             borderRadius: BorderRadius.circular(80.0),
          ),
          child: Text(text) ,
        )

    );
  }
}