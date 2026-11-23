import 'package:get/get.dart';

class TransaksiController extends GetxController {
  var hasilHitung = 0.0.obs; // obs digunakan untuk update ke UI page

  void ppn(
    double hargamakanan,
    double jumlahmakanan,) 
    {
    double subtotal = hargamakanan * jumlahmakanan;
    double totalbayar = subtotal * 0.05 + subtotal;
    hasilHitung.value = totalbayar;
  }
}

