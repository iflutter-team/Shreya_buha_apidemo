import 'dart:convert';

import 'package:apidemo/json_model/signup_model.dart';
import 'package:apidemo/login_screen/login_page.dart';
import 'package:apidemo/signup_screen/signup_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../json_model/user_model.dart';
import '../services/pref_service.dart';
import '../utils/pref_res.dart';

class SignupController extends GetxController {
  TextEditingController FirstName = TextEditingController();
  TextEditingController LastName = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController EmailId = TextEditingController();
  SignUpModel? getPostData;

  Future userSignUp() async {
    Map<String, dynamic> body = {
      "FirstName": FirstName.text.trim(),
      "LastName": LastName.text.trim(),
      "EmailId": EmailId.text.trim(),
      "Password": Password.text.trim(),
    };

    getPostData = await SignupApi.registerUser(body: body);
    if(getPostData!=null && getPostData!.status == 1){
      Get.off(()=>LoginPage());
    }
  }

 // Future<void> addData() async {
    // Map<String, dynamic> user = {
    //   "name": name1.text,
    //   "password": password1.text,
    //   "email": email.text,
    //   "number": number.text
    // };

  //   User userModel = User.fromJson(user);
  //   String userString = PrefService.getString(PrefRes.userList);
  //   List<User> userListt = [];
  //   if(userString == ''){
  //     userListt.add(userModel);
  //   }else{
  //     userListt = userFromJson(userString);
  //    // userList.add(User.fromJson(user));
  //     userListt.add(userModel);
  //   }
  //    userString = userToJson(userListt);
  //   PrefService.setValue(PrefRes.userList, userString);
  //   print("--------------------------------------------------${userListt}");
  //   Get.back();
  //
  // }
}