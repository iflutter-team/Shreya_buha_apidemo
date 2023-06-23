import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';
import 'login_page_widget.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
     Get.put(LoginController());
    return Scaffold(body: loginBody());
  }
}
