import 'dart:io';

import 'package:e_commerce_dashboard/core/services/storage_service.dart';
import 'package:e_commerce_dashboard/core/utils/keys.dart';
import 'package:path/path.dart' as b;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStorageService implements StorageService {
  static late Supabase _supabase;
  static createBuckets(String bucketName) async {
    await _supabase.client.storage.createBucket(bucketName);
  }

  static initSupabase() async {
    _supabase = await Supabase.initialize(
      url: kSupabaseUrl,
      anonKey: kSupabaseKey,
    );
  }

  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName = b.basename(file.path);
    String extensionName = b.extension(file.path);
    var result = await _supabase.client.storage
        .from('products_images')
        .upload('$path/$fileName.$extensionName', file);
    return result;
  }
}
