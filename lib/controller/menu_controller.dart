import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/menu/home.dart';
import 'package:pas_flutter/menu/feat.dart';
import 'package:pas_flutter/menu/profile.dart';

class MainMenuController extends GetxController {

  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [];
}

//flutter run -d chrome --web-browser-flag "--disable-web-security"