import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ingat_tugas/app/modules/admin/views/tambah_tugas.dart';

import '../controllers/admin_controller.dart';

class AdminView extends StatefulWidget {
  @override
  _AdminViewState createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference tugas = firestore.collection('tugas');

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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: StreamBuilder<QuerySnapshot>(
            stream: tugas.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: CircularProgressIndicator());
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }

              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (_, index) {
                  DocumentSnapshot data = snapshot.data!.docs[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 8),
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 0.1,
                          blurRadius: 7,
                          offset: Offset(1, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(
                        data['title'],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        data['matkul'],
                        style: GoogleFonts.poppins(),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                            title: 'Delete Data ?',
                            confirm: ElevatedButton(
                              onPressed: () {
                                tugas.doc(data.id).delete();
                                Get.back();
                                Get.snackbar(
                                    'Success', 'Data berhasil di hapus');
                              },
                              child: Text('Delete'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red[900],
                              ),
                            ),
                            cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text('Cancel'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.delete_rounded,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ));
  }
}
