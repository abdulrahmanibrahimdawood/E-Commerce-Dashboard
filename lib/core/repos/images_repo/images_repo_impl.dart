import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:e_commerce_dashboard/core/services/storage_service.dart';
import 'package:e_commerce_dashboard/core/utils/backend_endpoints.dart';

class ImagesRepoImpl implements ImagesRepo {
  final StorageService storageService;

  ImagesRepoImpl({required this.storageService});
  @override
  Future<Either<Failure, String>> uploadImage(File image) async {
    try {
      String url = await storageService.uploadFile(
        image,
        BackendEndpoints.images,
      );
      return Right(url);
    } on Exception catch (e) {
      return Left(ServerFailure('Failed to upload image: ${e.toString()}'));
    }
  }
}
