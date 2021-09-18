import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tugas_controller.dart';

class TugasView extends GetView<TugasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TugasView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TugasView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
