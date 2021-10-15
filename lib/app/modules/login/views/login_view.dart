import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ingat_tugas/app/controllers/logic_controller.dart';
import 'package:ingat_tugas/app/modules/home/views/home_view.dart';
import 'package:ingat_tugas/app/modules/register/views/register_view.dart';
import 'package:ingat_tugas/app/routes/app_pages.dart';
import 'package:ingat_tugas/app/utils/navbar.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LogicController> {
  final authC = Get.put(LogicController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red[900],
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Aplikasi MengNugas',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 22),
                      ),
                    ),
                    Image.asset(
                      'assets/image/login.png',
                      width: 200,
                    )
                  ],
                ),
              ),
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.68,
                builder: (context, snapshot) {
                  return Container(
                    padding: EdgeInsets.all(10),
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
                          'Login Cuy',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          controller: authC.emailLogin,
                          autocorrect: false,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(15.0)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(15.0)),
                              hintText: 'Email',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14.0, color: Colors.grey),
                              filled: true,
                              fillColor: Colors.grey[200]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: authC.passLogin,
                          obscureText: true,
                          autocorrect: false,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(15.0)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(15.0)),
                              hintText: 'Password',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14.0, color: Colors.grey),
                              filled: true,
                              fillColor: Colors.grey[200]),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            authC.onLogin(
                                authC.emailLogin.text, authC.passLogin.text);
                            authC.emailLogin.text = "";
                            authC.passLogin.text = "";
                          },
                          child: Center(
                            child: Text(
                              'Gass!',
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
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Belum punya akun?',
                              style: GoogleFonts.poppins(color: Colors.grey),
                            ),
                            TextButton(
                              onPressed: () => Get.to(RegisterView()),
                              child: Text(
                                'Register',
                                style: GoogleFonts.poppins(
                                  color: Colors.red[500],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
