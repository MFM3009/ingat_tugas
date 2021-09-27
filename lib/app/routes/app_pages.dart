import 'package:get/get.dart';

import 'package:ingat_tugas/app/modules/admin/bindings/admin_binding.dart';
import 'package:ingat_tugas/app/modules/admin/views/admin_view.dart';
import 'package:ingat_tugas/app/modules/home/bindings/home_binding.dart';
import 'package:ingat_tugas/app/modules/home/views/home_view.dart';
import 'package:ingat_tugas/app/modules/jadwal/bindings/jadwal_binding.dart';
import 'package:ingat_tugas/app/modules/jadwal/views/jadwal_view.dart';
import 'package:ingat_tugas/app/modules/login/bindings/login_binding.dart';
import 'package:ingat_tugas/app/modules/login/views/login_view.dart';
import 'package:ingat_tugas/app/modules/member/bindings/member_binding.dart';
import 'package:ingat_tugas/app/modules/member/views/member_view.dart';
import 'package:ingat_tugas/app/modules/profile/bindings/profile_binding.dart';
import 'package:ingat_tugas/app/modules/profile/views/profile_view.dart';
import 'package:ingat_tugas/app/modules/register/bindings/register_binding.dart';
import 'package:ingat_tugas/app/modules/register/views/register_view.dart';
import 'package:ingat_tugas/app/modules/tugas/bindings/tugas_binding.dart';
import 'package:ingat_tugas/app/modules/tugas/views/tugas_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.TUGAS,
      page: () => TugasView(),
      binding: TugasBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.JADWAL,
      page: () => JadwalView(),
      binding: JadwalBinding(),
    ),
    GetPage(
      name: _Paths.MEMBER,
      page: () => MemberView(),
      binding: MemberBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN,
      page: () => AdminView(),
      binding: AdminBinding(),
    ),
  ];
}
