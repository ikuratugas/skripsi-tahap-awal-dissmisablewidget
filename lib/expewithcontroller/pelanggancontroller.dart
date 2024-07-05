import 'package:flutter/material.dart';
import 'package:skripsi_tahap_awal/expewithmodel/pelanggan.dart';

class PelangganController extends ChangeNotifier {
  List<Pelanggan> datapelanggan = [
    Pelanggan(
        nama: "ikrar aprianto",
        alamat: "Galampa",
        noTelepon: 0823022,
        waktuLanggan: DateTime(2024, 7, 5)),
    Pelanggan(
        nama: "sarif",
        alamat: "wameo",
        noTelepon: 0812022,
        waktuLanggan: DateTime(2024, 12, 5)),
    Pelanggan(
        nama: "agus saputra kambea",
        alamat: "pasarwajo",
        noTelepon: 0884022,
        waktuLanggan: DateTime(2024, 1, 5)),
    Pelanggan(
        nama: "adam",
        alamat: "Lastrada",
        noTelepon: 088948022,
        waktuLanggan: DateTime(2024, 6, 5)),
  ];
}
