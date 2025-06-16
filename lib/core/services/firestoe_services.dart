import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/core/services/database_service.dart';

class FirestoeServices implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    required String docId,
  }) async {
    await firestore.collection(path).doc(docId).set(data);
  }

  @override
  Future<dynamic> getData({
    required String path,
    String? docId,
    Map<String, dynamic>? query,
  }) async {
    if (docId != null) {
      var result = await firestore.collection(path).doc(docId).get();
      return result.data();
    }
    if (query != null) {
      Query<Map<String, dynamic>> data = firestore.collection(path);
      if (query["orderBy"] != null) {
        data = data.orderBy(query["orderBy"], descending: query["descending"]);
      }
      if (query["limit"] != null) {
        data = data.limit(query["limit"]);
      }
      var result = await data.get();
      return result.docs.map((e) => e.data()).toList();
    }
    var result = await firestore.collection(path).get();
    return result.docs.map((e) => e.data()).toList();
  }

  @override
  Future<bool> checkData({required String path, required String docId}) async {
    var data = await firestore.collection(path).doc(docId).get();
    return data.exists;
  }
}
