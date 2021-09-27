import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ingat_tugas/app/modules/tugas/views/tugas_detail.dart';

import '../controllers/tugas_controller.dart';

class TugasView extends GetView<TugasController> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream =
        FirebaseFirestore.instance.collection('tugas').snapshots();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Tugas Perkuliahan'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: StreamBuilder<QuerySnapshot>(
            stream: _usersStream,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: CircularProgressIndicator());
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }

              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot data = snapshot.data!.docs[index];
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 0.1,
                            blurRadius: 7,
                            offset: Offset(1, 3),
                          ),
                        ]),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            'assets/image/task.png',
                            width: 50,
                          ),
                          title: Text(
                            data['title'],
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(
                            data['matkul'],
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              data['semester'],
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => Get.to(TugasDetail(
                                detail: snapshot.data!.docs[index],
                              )),
                              child: Text(
                                'Detail',
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              );

              // return ListView(
              //   children: snapshot.data!.docs.map((DocumentSnapshot document) {
              //     Map<String, dynamic> data =
              //         document.data()! as Map<String, dynamic>;

              //   }).toList(),
              // );
            },
          ),
        ));
  }
}
