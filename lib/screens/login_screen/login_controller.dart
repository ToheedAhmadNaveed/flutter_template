import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kindura_ai/data/response/status.dart';
// import 'package:kindura_ai/models/login/user_model.dart';
// import 'package:kindura_ai/repository/login_repository/login_repository.dart';
import 'package:kindura_ai/res/routes/routes_name.dart';
import 'package:kindura_ai/utils/utils.dart';
import 'package:kindura_ai/user_preference/user_preferences_view_model.dart';

class LoginScreenController extends GetxController {
  // final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxString error = ''.obs;
  UserPreferences userPreferences = UserPreferences();
  Rx<Status> requestStatus = Status.LOADING.obs;

  void setRequestStatus(Status value) => requestStatus.value = value;
  void setError(String value) => error.value = value;

  void loginApi() {
    if (!emailController.value.text.contains("@")) {
      Util.Snack_Bar("Warning", "Please Enter Valid Email");
    } else if (passwordController.value.text.isEmpty) {
      Util.Snack_Bar("Warning", "Please Enter Password");
    } else {
      setRequestStatus(Status.COMPLETED);
      // Map data = {
      //   "email": email_controller.value.text,
      //   "password": password_controller.value.text,
      // };
      Get.toNamed(RoutesName.home_screen);
      // _api.loginApi(data).then((value) {
      //   setRequestStatus(Status.LOADING);
      //   if (value['error'] == 'user not found') {
      //     Util.Snack_Bar("Warning", value['error']);
      //   } else {
      //     setRequestStatus(Status.LOADING);
      //     userPreferences
      //         .saveUser(UserModel.fromJson(value["token"]["access"]))
      //         .then((value) => null)
      //         .onError((error, stackTrace) => null);
          
      //     Util.Snack_Bar("login", "Login Successfully");
      //   }
      // }).onError((error, stackTrace) {
      //   setRequestStatus(Status.LOADING);
      //   Util.Snack_Bar("Error", error.toString());
      // });
    }
  }
}
