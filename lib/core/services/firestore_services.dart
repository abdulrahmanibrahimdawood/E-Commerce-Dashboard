import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_dashboard/core/services/data_service.dart';

class FirestoreServices implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  //هنا عمللت دي عشان اقدر اضيف داتا بشكل عام للداتا بيز بتاعتنا
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  //هنا عمللت دي عشان اقدر اخد داتا بشكل عام للداتا بيز المتخزنه
  // record معين
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  }) async {
    var data = await firestore.collection(path).doc(documentId).get();
    return data.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  }) async {
    var data = await firestore.collection(path).doc(documentId).get();
    return data.exists;
  }
}
