import 'package:e_commerce_dashboard/core/enums/order_enum.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_product_entity.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/shipping_address_entity.dart';

class OrderEntity {
  final double totalPrice;
  final String uId;
  final ShippingAddressEntity shippingAddressModel;
  final List<OrderProductEntity> orderProducts;
  final String paymentMethod;
  final OrderStatusEnum status;
  final String orderId;

  OrderEntity({
    required this.orderId,
    required this.status,
    required this.totalPrice,
    required this.uId,
    required this.shippingAddressModel,
    required this.orderProducts,
    required this.paymentMethod,
  });
}
