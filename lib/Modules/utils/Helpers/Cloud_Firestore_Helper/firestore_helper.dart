import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreHelper {
  FireStoreHelper._();

  static final FireStoreHelper fireStoreHelper = FireStoreHelper._();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //todo:Student Insert to CloudFirestore
  Future<void> addStudent({required Map<String, dynamic> data}) async {
    await firestore.collection("student").doc("${data['id']}").set(data);
  }

  //todo:Fetch Student Data from CloudFirestore
  Stream<QuerySnapshot<Map<String, dynamic>>> fetchStudent() {
    return firestore.collection("student").snapshots();
  }

  //todo:Delete Data from Cloud Firestore
  Future<void> deleteStudent({required var id}) async {
    await firestore.collection("student").doc("$id").delete();
  }
}
