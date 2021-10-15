import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:ingat_tugas/app/modules/admin/views/admin_view.dart';

class AuthAdmin extends StatelessWidget {
  final String passwd = "vipclass";

  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/login.png',
              width: 250,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: pass,
              autocorrect: false,
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.0)),
                  hintText: 'Password',
                  hintStyle:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (pass.text == passwd) {
                  Get.to(AdminView());
                  pass.text = "";
                } else {
                  Get.snackbar('Failed', 'Password yang anda masukan salah!');
                }
              },
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red[900],
                padding: EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            )
          ],
        ),
      ),
    );
  }
}
