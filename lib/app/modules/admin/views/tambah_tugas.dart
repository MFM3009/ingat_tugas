import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ingat_tugas/app/modules/admin/controllers/admin_controller.dart';

class TambahTugas extends GetView<AdminController> {
  const TambahTugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addC = Get.put(AdminController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('Tambah Tugas'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              controller: addC.tugasC,
              autocorrect: false,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  hintText: 'Tugas',
                  hintStyle:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: addC.matkulC,
              autocorrect: false,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  hintText: 'Matkul',
                  hintStyle:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: addC.dosenC,
              autocorrect: false,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  hintText: 'Dosen',
                  hintStyle:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: addC.statusC,
              autocorrect: false,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  hintText: 'Status ex: Mempet',
                  hintStyle:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: addC.deadlineC,
              autocorrect: false,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  hintText: 'Deadline',
                  hintStyle:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: addC.detailC,
              maxLines: 10,
              autocorrect: false,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  hintText: 'Detail Tugas',
                  hintStyle:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () => addC.tambahTugas(),
              child: Center(
                child: Text(
                  'Tambah',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red[900],
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
