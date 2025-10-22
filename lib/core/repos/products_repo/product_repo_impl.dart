import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/core/repos/products_repo/product_repo.dart';
import 'package:e_commerce_dashboard/core/services/data_service.dart';
import 'package:e_commerce_dashboard/core/utils/backend_endpoints.dart';
import 'package:e_commerce_dashboard/features/add_product/data/models/product_model.dart';
import 'package:e_commerce_dashboard/features/add_product/domain/entites/product_entity.dart';

class ProductRepoImpl implements ProductRepo {
  DatabaseServices databaseServices;
  ProductRepoImpl({required this.databaseServices});
  @override
  Future<Either<Failure, void>> addProduct(
    ProductEntity addProductInputEntity,
  ) async {
    try {
      await databaseServices.addData(
        path: BackendEndpoints.productsCollection,
        data: ProductModel.fromEntity(addProductInputEntity).toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure('Failed to add product: ${e.toString()}'));
    }
  }
}
