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
      
    } catch (e) {
      
    } {
      isLoading.value = true;

      final response = await http.post(
        Uri.parse('https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php? l=English%20Premier%20League'),
      );

      isLoading.value = false;
    }
  }
}