import 'dart:async';

import 'package:get/get.dart';

import '../home_screen/home_page.dart';
import '../login_screen/login_page.dart';
import '../services/pref_service.dart';
import '../utils/pref_res.dart';
class SplashController extends GetxController {
  @override
  void onInit() {
    bool isLogin = PrefService.getBool(PrefRes.isSignup);
    Timer(const Duration(seconds: 2), () {
      Get.off(() => isLogin ?  const HomePage() :  LoginPage());
    });
    super.onInit();
  }
}
