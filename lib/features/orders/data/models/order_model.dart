import 'package:e_commerce_dashboard/features/orders/data/models/order_product_model.dart';
import 'package:e_commerce_dashboard/features/orders/data/models/shipping_address_model.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_entity.dart';

class OrderModel {
  final double totalPrice;
  final String uId;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProducts;
  final String paymentMethod;

  OrderModel({
    required this.totalPrice,
    required this.uId,
    required this.shippingAddressModel,
    required this.orderProducts,
    required this.paymentMethod,
  });
  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      totalPrice: json['totalPrice'],
      uId: json['uId'],
      shippingAddressModel: ShippingAddressModel.fromJson(
        json['shippingAddressEntity'],
      ),
      orderProducts: List<OrderProductModel>.from(
        json['orderProducts'].map((e) => OrderProductModel.fromJson(e)),
      ),
      paymentMethod: json['paymentMethod'],
    );
  }
  toJson() {
    return {
      'totalPrice': totalPrice,
      'uId': uId,
      'states': 'pending',
      'date': DateTime.now().toString(),
      'shippingAddressEntity': shippingAddressModel.toJson(),
      'orderProducts': orderProducts.map((e) => e.toJson()).toList(),
      'paymentMethod': paymentMethod,
    };
  }

  toEntity() {
    return OrderEntity(
      totalPrice: totalPrice,
      uId: uId,
      shippingAddressModel: shippingAddressModel.toEntity(),
      orderProducts: orderProducts.map((e) => e.toEntity()).toList(),
      paymentMethod: paymentMethod,
    );
  }
}
