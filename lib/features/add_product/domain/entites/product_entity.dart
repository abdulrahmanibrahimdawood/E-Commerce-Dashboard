import 'dart:io';

import 'package:e_commerce_dashboard/features/add_product/domain/entites/review_entity.dart';

class ProductEntity {
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
  final List<ReviewEntity> reviews;
  ProductEntity({
    required this.expirationMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    this.imageUrl,
    required this.reviews,
    required this.name,
    required this.description,
    required this.code,
    required this.price,
    required this.isFeatured,
    this.isOrganic = false,
    required this.image,
  });
}
