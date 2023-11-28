import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreHelper {
  FireStoreHelper._();

  static final FireStoreHelper fireStoreHelper = FireStoreHelper._();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addStudent({required Map<String, dynamic> data}) async {
    await firestore.collection("student").doc("${data['id']}").set(data);
  }
}
