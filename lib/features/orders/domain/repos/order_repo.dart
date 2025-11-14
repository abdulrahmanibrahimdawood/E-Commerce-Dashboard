import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/enums/order_enum.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_entity.dart';

abstract class OrderRepo {
  Stream<Either<Failure, List<OrderEntity>>> fetchOrders();

  Future<Either<Failure, void>> updateOrder({
    required OrderStatusEnum status,
    required String orderId,
  });
}
