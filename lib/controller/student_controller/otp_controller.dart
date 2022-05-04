

import 'dart:async';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../utils/packages_used.dart';


class VerifyController extends GetxController {

  GlobalKey<FormState> otpkey = GlobalKey<FormState>();
  RxString elapsedTime = '02:00'.obs;
  int _start = 120;
  String result = '';

  List<TextEditingController> otp = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),

  ];
  late Timer _timer;
  String formatTime(int secs) {
    var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  String ? otpvalidator(value){
    if (value.length ==0) {
      return '';
    } else {
      return null;
    }

  }

  checkOtp(){
    final isValiadtor = otpkey.currentState!.validate();
    if (!isValiadtor) {
      return;
    } else {
      // Get.to(()=> SelectPoolScreen());
    }
  }

  void otpdigits() {
    for (int i = 0; i < 4; i++) {
      result += otp[i].text;
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}