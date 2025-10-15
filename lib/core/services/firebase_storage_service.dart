import 'package:e_commerce_dashboard/core/services/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService implements StorageService {
  final storageReference = FirebaseStorage.instance;
  @override
  Future<String> uploadFile(String file) {
    throw UnimplementedError();
  }
}
