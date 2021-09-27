import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TambahTugas extends StatelessWidget {
  const TambahTugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              autocorrect: false,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  hintText: 'Nama Matkul',
                  hintStyle:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
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
              onPressed: () {},
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
