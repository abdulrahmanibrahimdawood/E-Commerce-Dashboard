import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/core/services/data_service.dart';
import 'package:e_commerce_dashboard/core/utils/backend_endpoints.dart';
import 'package:e_commerce_dashboard/features/orders/data/models/order_model.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_entity.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/order_repo.dart';

class OrderRepoImpl implements OrderRepo {
  final DatabaseServices databaseServices;

  OrderRepoImpl({required this.databaseServices});

  @override
  Future<Either<Failure, List<OrderEntity>>> fetchOrders() async {
    try {
      final data = await databaseServices.getData(
        path: BackendEndpoints.getOrders,
      );
      List<OrderEntity> orders = (data as List<dynamic>)
          .map<OrderEntity>((e) => OrderModel.fromJson(e).toEntity())
          .toList();
      return Right(orders);
    } catch (e) {
      return Left(ServerFailure('Failed to fetch orders'));
    }
  }
}
