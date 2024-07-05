import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripsi_tahap_awal/expewithcontroller/pelanggancontroller.dart';
import 'package:skripsi_tahap_awal/expewithprovider/create_penagihan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // sebenarnya ini hanya sampai MaterialApp. namun karena pakai provider
    // maka MaterialApp di bungkus dengan Multiprovider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (contex) => PelangganController())
      ],
      child: MaterialApp(
          title: 'Akan ku selesaikan skripsiku',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const CreatePenagihan()),
    );
  }
}
