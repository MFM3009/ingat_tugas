import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
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
        body: SizedBox.expand(
            child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              color: Colors.red[900],
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 22),
                child: ListTile(
                  leading: Image.asset(
                    'assets/image/unsika.png',
                    width: 80,
                  ),
                  title: Text(
                    widget.detail['matkul'],
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    widget.detail['dosen'],
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                  expand: true,
                  minChildSize: 0.5,
                  maxChildSize: 0.9,
                  initialChildSize: 0.8,
                  builder: (context, snapshot) {
                    return Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: ListView(
                          children: [
                            Text(
                              widget.detail['title'],
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, top: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'Deadline : ',
                                    style: GoogleFonts.poppins(),
                                  ),
                                  Text(
                                    widget.detail['dl'],
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                widget.detail['desk'],
                                style: GoogleFonts.poppins(),
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        ));
                  }),
            )
          ],
        )));
  }
}
