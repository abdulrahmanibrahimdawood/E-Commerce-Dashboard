import 'package:e_commerce_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:e_commerce_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:e_commerce_dashboard/core/repos/products_repo/product_repo.dart';
import 'package:e_commerce_dashboard/core/repos/products_repo/product_repo_impl.dart';
import 'package:e_commerce_dashboard/core/services/data_service.dart';
import 'package:e_commerce_dashboard/core/services/firestore_services.dart';
import 'package:e_commerce_dashboard/core/services/storage_service.dart';
import 'package:e_commerce_dashboard/core/services/supabase_storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<StorageService>(SupabaseStorageService());
  getIt.registerSingleton<DatabaseServices>(FirestoreServices());

  getIt.registerSingleton<ImagesRepo>(
    ImagesRepoImpl(storageService: getIt.get<StorageService>()),
  );
  getIt.registerSingleton<ProductRepo>(
    ProductRepoImpl(databaseServices: getIt.get<DatabaseServices>()),
  );
}
