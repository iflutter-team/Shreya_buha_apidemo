import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
   const SplashPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return const Scaffold(
      body: Center(
          child: SizedBox(
        height: 150,
        width: 150,
        child: FlutterLogo(),
      )),
    );
  }
}


