import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/component/custom_button.dart';
import 'package:pas_flutter/component/custom_text.dart';
import 'package:pas_flutter/component/custom_textfield.dart';
import 'package:pas_flutter/controller/transaksi_controller.dart';

class PembelianPage extends StatelessWidget {
  PembelianPage({super.key});

  final controller = Get.put(TransaksiController());

  final TextEditingController harga = TextEditingController();
  final TextEditingController jumlah = TextEditingController();

  void hitung(Function(double, double) operasi) {
    if (harga.text.isEmpty || jumlah.text.isEmpty) {
      Get.snackbar(
        "Peringatan",
        "Kedua angka harus diisi terlebih dahulu!",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }
    double a1 = double.tryParse(harga.text) ?? 0;
    double a2 = double.tryParse(jumlah.text) ?? 0;
    operasi(a1, a2);
  }

  @override
  Widget build(BuildContext context) {
    final makanan = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: Text("Transaksi Pembelian")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              makanan.gambar,
              height: 180,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.fastfood, size: 80, color: const Color.fromARGB(255, 111, 88, 88)),
            ),
            SizedBox(height: 15),
            Text(
              makanan.namaMakanan,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Harga: ${makanan.harga}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            CustomTextfield(
              myHint: "input harga makanan",
              txtController: harga,
            ),
            const SizedBox(height: 10),
            CustomTextfield(
              myHint: "input jumlah pembelian",
              txtController: jumlah,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  myLabel: "total harga",
                  bgColor: Color.fromARGB(255, 110, 30, 30),
                  textColor: Colors.white,
                  onPressed: () => hitung(controller.ppn),
                ),
              ],
            ),
          ],
        ),
        ),
      );
  }
}