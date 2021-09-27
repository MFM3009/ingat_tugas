import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:ingat_tugas/app/modules/tugas/controllers/tugas_controller.dart';

class TugasDetail extends GetView<TugasController> {
  const TugasDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('data'),
    );
  }
}
