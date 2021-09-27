import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminController extends GetxController {
  TextEditingController tugasC = TextEditingController();
  TextEditingController matkulC = TextEditingController();
  TextEditingController dosenC = TextEditingController();
  TextEditingController statusC = TextEditingController();
  TextEditingController deadlineC = TextEditingController();
  TextEditingController detailC = TextEditingController();

  CollectionReference data = FirebaseFirestore.instance.collection('tugas');

  void tambahTugas() {
    data.add({
      'title': tugasC.text,
      'matkul': matkulC.text,
      'dosen': dosenC.text,
      'status': statusC.text,
      'dl': deadlineC.text,
      'desk': detailC.text,
    });

    tugasC.text = '';
    matkulC.text = '';
    dosenC.text = '';
    statusC.text = '';
    deadlineC.text = '';
    detailC.text = '';
    Get.snackbar('Success', 'Upload data berhasil!');
  }
}
