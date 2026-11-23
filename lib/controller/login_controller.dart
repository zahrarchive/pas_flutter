import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_flutter/models/login_model.dart';
import 'package:pas_flutter/routes.dart';
import 'package:pas_flutter/models/login_model.dart';
import 'package:pas_flutter/routes.dart';

class LoginController extends GetxController {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  var loginModel = Rxn<LoginModel>();

  void loginApi() async {
    try {
      isLoading.value = true;

      final response = await http.post(
        Uri.parse('https://mediadwi.com/api/latihan/login'),
        body: {
          'username': txtUsername.text,
          'password': txtPassword.text,
        },
      );

      isLoading.value = false;

      if (response.statusCode == 200) {
        loginModel.value = loginModelFromJson(response.body);

        if (loginModel.value?.status == true) {
          Get.snackbar("berhasil", loginModel.value?.message ?? "");
          Get.offNamed(Routes.menu_drawer);
        } else {
          Get.snackbar("gagal", loginModel.value?.message ?? "Terjadi kesalahan");
        }
      } else {
        isLoading.value = false;
        Get.snackbar("gagal", "cek internet connection");
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("gagal", "cek internet connection");
    }
  }

  @override
  void onClose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.onClose();
  }
}