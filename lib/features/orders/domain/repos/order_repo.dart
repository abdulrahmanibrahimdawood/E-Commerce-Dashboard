import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_entity.dart';

abstract class OrderRepo {
  Future<Either<Failure, List<OrderEntity>>> fetchOrders();
}
