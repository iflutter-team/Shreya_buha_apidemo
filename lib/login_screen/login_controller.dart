import 'dart:convert';

import 'package:apidemo/json_model/login_model.dart';
import 'package:apidemo/login_screen/login_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen/home_page.dart';
import '../json_model/user_model.dart';
import '../services/pref_service.dart';
import '../signup_screen/signup_page.dart';
import '../utils/pref_res.dart';

class LoginController extends GetxController {
  TextEditingController Password = TextEditingController();
  TextEditingController EmailId = TextEditingController();
  LoginModel? getPostDataLogin;


  void goToSignupPage() {
    Get.to(() => SingupPage());
  }

  Future<void> onTapLogin() async {
    Map<String, dynamic> body = {
      "Password": Password.text.trim(),
      "email": EmailId.text.trim(),
    };

    getPostDataLogin = await LoginApi.loginUser(body: body);
    if(getPostDataLogin!=null && getPostDataLogin!.status == 1){
     await PrefService.setValue(PrefRes.isSignup, true);
      Get.off(()=>const HomePage());
    }
  }
    // List<Map<String,dynamic>>userJsonList=[];
    //
    //
    // String userString = PrefService.getString(PrefRes.userList);
    // List<User> userList;
    // if (userString == '') {
    //   Get.snackbar("Login Error", "user not found Please signUp");
    // } else {
    //   userList = userFromJson(userString);
    //   bool value = userList.any((element) =>
    //       element.email == emailController.text &&
    //       element.password1 == password.text);
    //   if (value == true) {
    //     int index = userList.indexWhere(
    //       (element) =>
    //           element.email == emailController.text &&
    //           element.password1 == password.text,
    //     );
    //     User loginUser = userList[index];
  //       PrefService.setValue(
  //         PrefRes.loginUser,
  //         json.encode(
  //           loginUser.toJson(),
  //         ),
  //       );
  //       Get.off(() => const HomePage());
  //     } else {
  //       Get.snackbar("Login Error", "please Enter valid Data");
  //     }
  //   }
  }


