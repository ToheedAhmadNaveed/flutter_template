import 'dart:async';
import 'package:get/get.dart';
import 'package:kindura_ai/res/routes/routes_name.dart';

class SplashServices {

  void isLogin() {
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(RoutesName.login_screen);
    });
    // userPreferences.getUser().then((value) {
    //   if (value.token!.isEmpty || value.token.toString() == null) {
    //     Timer(const Duration(seconds: 3), () {
    //       Get.toNamed(RoutesName.login_screen);
    //     });
    //   } else {
    //     Timer(const Duration(seconds: 3), () {
    //       Get.toNamed(RoutesName.home_screen);
    //     });
    //   }
    // });
  }
}
