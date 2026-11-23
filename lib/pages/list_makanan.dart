import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/controller/list_makanan_controller.dart';
import 'package:pas_flutter/routes.dart';

class ListMakanan extends StatelessWidget {
  ListMakanan({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan"), centerTitle: true, backgroundColor: const Color.fromARGB(255, 122, 179, 223),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.dataMakanan[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 6),
              child: InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.pembelian,
                    arguments: makanan,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.network(
                        makanan.gambar,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Icon(Icons.fastfood, size: 40, color: const Color.fromARGB(255, 114, 139, 158)),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              makanan.namaMakanan,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 122, 179, 223)),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Rp ${makanan.harga}",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded, size: 16),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}