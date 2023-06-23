import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../common/textfield.dart';

import '../services/pref_service.dart';
import '../utils/pref_res.dart';
import 'login_controller.dart';

Widget loginBody() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<LoginController>(
            builder: (controller) {
              return textFieldCommon(controller.EmailId, "Enter Email");
            },
          ),
          const SizedBox(height: 20),
          GetBuilder<LoginController>(
            builder: (controller) {
              return textFieldCommon(controller.Password, "password");
            },
          ),
          const SizedBox(height: 15),
          GetBuilder<LoginController>(
            id: "check",
            builder: (controller) {
              return ElevatedButton(
                  onPressed: () {
                     controller.onTapLogin();
                  PrefService.setValue(PrefRes.isSignup, true);
                  },
                  child: const Text("submit"));
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("I have Not account ?"),
              GetBuilder<LoginController>(
                builder: (controller) {
                  return TextButton(
                      onPressed: () => controller.goToSignupPage(),
                      child: const Text(
                        "Signup",
                        style: TextStyle(color: Colors.blue),
                      ));
                },
              )
            ],
          )
        ],
      ),
    ),
  );
}
