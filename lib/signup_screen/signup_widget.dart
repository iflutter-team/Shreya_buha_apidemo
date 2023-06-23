import 'package:apidemo/signup_screen/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

Widget signupBoyd() {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: GetBuilder<SignupController>(
        builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.FirstName,
                decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ), label: const Text("FirstName")),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: controller.EmailId,
                decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ), label: const Text("EmailId")),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: controller.LastName,
                decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ), label: const Text("LastName")),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: controller.Password,
                decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ), label: const Text("password")),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    if(
                    controller.FirstName.text.isNotEmpty&&
                        controller.LastName.text.isNotEmpty&&
                        controller.EmailId.text.isNotEmpty&&
                        controller.Password.text.isNotEmpty){
                      controller.userSignUp();
                    }else{
                      Get.snackbar("Data is empty","please fill All data");
                    }
                  },
                  child: const Text("submit"))
            ],
          );
        },
      ));
}
