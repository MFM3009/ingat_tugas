import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:ingat_tugas/app/modules/tugas/controllers/tugas_controller.dart';

class TugasDetail extends StatefulWidget {
  TugasDetail({required this.detail});

  final DocumentSnapshot detail;

  @override
  _TugasDetailState createState() => _TugasDetailState();
}

class _TugasDetailState extends State<TugasDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red[900],
          title: Text('Detail Tugas'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              ListTile(
                leading: Image.asset(
                  'assets/image/logo-unsika.png',
                  width: 60,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              )
            ],
          ),
        ));
  }
}
