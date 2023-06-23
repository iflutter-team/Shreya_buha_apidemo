 import 'package:apidemo/services/pref_service.dart';
import 'package:apidemo/splash_screen/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
    await PrefService.init();
  runApp(  const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
  ));
}



