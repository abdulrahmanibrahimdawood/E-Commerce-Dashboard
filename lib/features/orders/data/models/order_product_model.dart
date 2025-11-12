import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_product_entity.dart';

class OrderProductModel {
  final String code;
  final String name;
  final String imageUrl;
  final int quantity;
  final double price;

  OrderProductModel({
    required this.code,
    required this.name,
    required this.imageUrl,
    required this.quantity,
    required this.price,
  });
  factory OrderProductModel.fromJson(Map<String, dynamic> json) {
    return OrderProductModel(
      code: json['code'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      quantity: json['quantity'],
      price: json['price'],
    );
  }
  toJson() {
    return {
      'code': code,
      'name': name,
      'imageUrl': imageUrl,
      'quantity': quantity,
      'price': price,
    };
  }

  OrderProductEntity toEntity() {
    return OrderProductEntity(
      code: code,
      name: name,
      imageUrl: imageUrl,
      quantity: quantity,
      price: price,
    );
  }
}
