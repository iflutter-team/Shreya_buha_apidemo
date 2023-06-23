import 'package:apidemo/signup_screen/signup_controller.dart';
import 'package:apidemo/signup_screen/signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SingupPage extends StatelessWidget {
   SingupPage({Key? key}) : super(key: key);

  final SignupController signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: signupBoyd());
  }
}
