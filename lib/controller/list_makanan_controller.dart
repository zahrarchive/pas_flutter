import 'package:get/get.dart';
import 'package:pas_flutter/models/makanan_model.dart';

class ListMakananController extends GetxController {
  List<MakananModel> dataMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng Spesial",
      deskripsi: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk. Gambar: Gunakan aset lokal atau URL gambar makanan yang valid.",
      harga: "25.000",
      gambar: "https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=500&q=80",
      
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar Madu",
      deskripsi: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
      harga: "30.000",
      gambar: "https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?w=500&q=80",
    ),
    MakananModel(
      namaMakanan: "Sate Ayam Madura",
      deskripsi: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
      harga: "28.000",
      gambar: "https://images.unsplash.com/photo-1534422298391-e4f8c172dddb?w=500&q=80",
    ),
    MakananModel(
      namaMakanan: "Mie Ayam Bakso",
      deskripsi: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
      harga: "20.000",
      gambar: "https://images.unsplash.com/photo-1541832676-9b763b0239ab?w=500&q=80",
    ),
    MakananModel(
      namaMakanan: "Es Teh Manis Jumbo",
      deskripsi: "Minuman teh melati segar dengan gula asli dan es batu kristal.",
      harga: "8.000",
      gambar: "https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?w=500&q=80",
    ),
  ];
}