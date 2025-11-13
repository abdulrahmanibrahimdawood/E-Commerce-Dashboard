class OrderProductEntity {
  final String code;
  final String name;
  final String imageUrl;
  final int quantity;
  final num price;

  OrderProductEntity({
    required this.code,
    required this.name,
    required this.imageUrl,
    required this.quantity,
    required this.price,
  });
}
