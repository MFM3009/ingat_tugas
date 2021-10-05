import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ingat_tugas/app/controllers/logic_controller.dart';
import 'package:ingat_tugas/app/modules/jadwal/views/jadwal_view.dart';
import 'package:ingat_tugas/app/modules/member/views/member_view.dart';
import 'package:ingat_tugas/app/modules/tugas/views/tugas_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // UserCredential userCredential;
  // HomeView({required this.userCredential});

  final authC = Get.find<LogicController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: 250,
            color: Colors.red[900],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "${authC.user.email}",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Jangan lupa nugas Cuy!',
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Image.asset(
                    'assets/image/noimage.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
                initialChildSize: 0.7,
                builder: (context, snapshot) {
                  return Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: ListView(
                      children: [
                        InkWell(
                          onTap: () => Get.to(JadwalView()),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 0.1,
                                    blurRadius: 7,
                                    offset: Offset(1, 3),
                                  ),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Jadwal Perkuliahan',
                                    style: GoogleFonts.poppins(fontSize: 18),
                                  ),
                                ),
                                Image.asset(
                                  'assets/image/kuliah.png',
                                  width: 100,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () => Get.to(TugasView()),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 0.1,
                                    blurRadius: 7,
                                    offset: Offset(1, 3),
                                  ),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Tugas Kuliah',
                                    style: GoogleFonts.poppins(fontSize: 18),
                                  ),
                                ),
                                Image.asset(
                                  'assets/image/tugas.png',
                                  width: 100,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () => Get.to(MemberView()),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 0.1,
                                    blurRadius: 7,
                                    offset: Offset(1, 3),
                                  ),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Our member of Class',
                                    style: GoogleFonts.poppins(fontSize: 18),
                                  ),
                                ),
                                Image.asset(
                                  'assets/image/member.png',
                                  width: 100,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    ));
  }
}
