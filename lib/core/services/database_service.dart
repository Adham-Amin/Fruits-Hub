abstract class DatabaseService {
  Future<void> addData({required String path, required Map<String, dynamic> data, required String docId});
  Future<Map<String, dynamic>> getData({required String path, required String docId});
  Future<bool> checkData({required String path, required String docId});

}