import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminController extends GetxController {
  DateTime dueDate = DateTime.now();
  String dateText = '';

  TextEditingController matkul = TextEditingController();
  TextEditingController deskripsi = TextEditingController();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Future<Null> selectDueDate(BuildContext context) async {
  //   final picked = await showDatePicker(
  //     context: context,
  //     initialDate: dueDate,
  //     firstDate: DateTime(2021),
  //     lastDate: DateTime(2080),
  //   );
  //   if (picked != null) {
  //     setState(() {
  //       dueDate = picked;
  //       dateText = "${picked.day}/${picked.month}/${picked.year}";
  //     });
  //   }
  // }

}
