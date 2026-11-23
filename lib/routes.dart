import 'package:get/get.dart';
import 'package:pas_flutter/pages/login_page.dart';
import 'package:pas_flutter/pages/menu_drawer.dart';
import 'package:pas_flutter/pages/pembelian_page.dart';
import 'package:pas_flutter/pages/list_makanan.dart';

class Routes {
  static const String login = "/login";
  static const String menu_drawer = "/menu_drawer";
  static const String pembelian = "/pembelian";
  static const String list_makanan = "/list_makanan";

  static final myPages = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: list_makanan, page: () => ListMakanan()),
    GetPage(name: pembelian, page: () => PembelianPage()),
    GetPage(name: menu_drawer, page: () => MenuDrawer()),
    // dll
  ];
}
