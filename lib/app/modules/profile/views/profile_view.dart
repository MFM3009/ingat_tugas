import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ingat_tugas/app/controllers/logic_controller.dart';
import 'package:ingat_tugas/app/utils/auth_admin.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final logicC = Get.find<LogicController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 270,
              color: Colors.red[900],
              child: Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/image/noimage.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                  initialChildSize: 0.65,
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
                      child: Column(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Mahasiswa',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "${logicC.user.email}",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () => logicC.onLogout(),
                                child: Text('Logout'),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red[900]),
                              )
                            ],
                          )),
                          SizedBox(
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: ElevatedButton(
                              onPressed: () => Get.to(AuthAdmin()),
                              child: Center(
                                child: Text(
                                  'Admin Panel',
                                  style: TextStyle(
                                    fontSize: 17,
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
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
