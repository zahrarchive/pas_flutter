import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/component/custom_button.dart';
import 'package:pas_flutter/component/custom_text.dart';
import 'package:pas_flutter/component/custom_textfield.dart';
import 'package:pas_flutter/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const SizedBox(height: 10)],
        ),
      ),
    );
  }
}
