import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:student_data/Modules/utils/Helpers/Cloud_Firestore_Helper/firestore_helper.dart';

import '../../../utils/Constants/global.dart';

class Student_Detail extends StatelessWidget {
  const Student_Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Detail"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (val) {
                Global.id = val;
              },
              controller: Global.idController,
              decoration: const InputDecoration(
                hintText: "enter GRID",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              onChanged: (val) {
                Global.name = val;
              },
              controller: Global.nameController,
              decoration: const InputDecoration(
                hintText: "enter name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              onChanged: (val) {
                Global.course = val;
              },
              controller: Global.courseController,
              decoration: const InputDecoration(
                hintText: "enter course",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                FireStoreHelper.fireStoreHelper.addStudent(data: {
                  "id": Global.id,
                  "name": Global.name,
                  "course": Global.course,
                });

                Global.idController.clear();
                Global.nameController.clear();
                Global.courseController.clear();
              },
              child: const Text("Add Student"),
            )
          ],
        ),
      ),
    );
  }
}
