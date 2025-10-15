import 'dart:io';

class AddProductInputIntity {
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  final File image;
  final String? imageUrl;

  AddProductInputIntity({
    this.imageUrl,
    required this.name,
    required this.description,
    required this.code,
    required this.price,
    required this.isFeatured,
    required this.image,
  });
}
