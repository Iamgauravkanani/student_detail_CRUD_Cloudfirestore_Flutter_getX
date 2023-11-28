import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Modules/App/Student_Detail_Screen/Views/student_detail.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    getPages: [GetPage(name: '/', page: () => Student_Detail())],
  ));
}
