import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ingat_tugas/app/modules/admin/views/tambah_tugas.dart';

import '../controllers/admin_controller.dart';

class AdminView extends GetView<AdminController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('Dashboard Admin'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(TambahTugas()),
        backgroundColor: Colors.red[900],
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          'AdminView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
