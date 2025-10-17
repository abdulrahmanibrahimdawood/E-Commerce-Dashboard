import 'dart:io';

class AddProductInputEntity {
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  final File image;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic = false;
  final int numberOfCalories;
  final int uniyAmount;
  final num avgRating = 0;
  final num ratingCount = 0;
  AddProductInputEntity({
    required this.expirationMonths,
    required this.numberOfCalories,
    required this.uniyAmount,
    this.imageUrl,
    required this.name,
    required this.description,
    required this.code,
    required this.price,
    required this.isFeatured,
    required this.image,
  });
}
