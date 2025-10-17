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
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;
  final num avgRating = 0;
  final num ratingCount = 0;
  AddProductInputEntity({
    required this.expirationMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    this.imageUrl,
    required this.name,
    required this.description,
    required this.code,
    required this.price,
    required this.isFeatured,
    this.isOrganic = false,
    required this.image,
  });
}
