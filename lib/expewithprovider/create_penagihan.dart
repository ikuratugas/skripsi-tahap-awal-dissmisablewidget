import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skripsi_tahap_awal/expewithcontroller/pelanggancontroller.dart';

class CreatePenagihan extends StatelessWidget {
  const CreatePenagihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PelangganController>(
      builder: (context, pelangganController, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Efficient ListView Example'),
          ),
          body: ListView.builder(
            itemCount: pelangganController.datapelanggan.length,
            itemBuilder: (context, index) {
              final pelanggan = pelangganController.datapelanggan[index];
              return Dismissible(
                key: Key(pelanggan.nama),
                direction: DismissDirection.startToEnd,
                confirmDismiss: (direction) async {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Confirm"),
                        content: const Text(
                            "Are you sure you want to delete this item?"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: const Text("No"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: const Text("Yes"),
                          ),
                        ],
                      );
                    },
                  );
                },
                onDismissed: (direction) {
                  pelangganController.datapelanggan.removeAt(index);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${pelanggan.nama} dismissed")),
                  );
                },
                background: Container(
                    color: Colors.red,
                    child: const Icon(Icons.delete, color: Colors.white)),
                child: ListTile(
                  title: Text(pelanggan.nama),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
