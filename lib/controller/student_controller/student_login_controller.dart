

import 'package:kerthik_app/utils/packages_used.dart';

class StudentLoginController extends GetxController{

  GlobalKey<FormState> studentloginKey = GlobalKey<FormState>();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();

  String ? mobileValidator(value){
    if (value == '') {
      return 'Please enter your Mobile number';

    }
    else if(value.length != 10){
      return 'Please enter 10 digit Mobile number';
    }
    else{
      return null;
    }
  }

}