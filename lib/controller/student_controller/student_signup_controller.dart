

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../utils/packages_used.dart';

class StudentSignUpController extends GetxController {

  GlobalKey<FormState> studentSignupKey = GlobalKey<FormState>();
  TextEditingController yourname = TextEditingController();
  TextEditingController studentname = TextEditingController();
  TextEditingController studentclass = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController mob = TextEditingController();
  TextEditingController pswd = TextEditingController();

}