import 'package:e_commerce_dashboard/core/services/firebase_storage_service.dart';
import 'package:e_commerce_dashboard/core/services/storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<StorageService>(FirebaseStorageService());
}
