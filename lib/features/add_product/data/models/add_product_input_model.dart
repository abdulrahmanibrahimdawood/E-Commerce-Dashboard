import 'dart:io';

import 'package:e_commerce_dashboard/features/add_product/domain/entites/add_product_input_entity.dart';

class AddProductInputModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  final File image;
  String? imageUrl;
  final int expirationMonths;
  bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;
  final num avgRating = 0;
  final num ratingCount = 0;

  AddProductInputModel({
    this.imageUrl,
    required this.numberOfCalories,
    required this.isOrganic,
    required this.unitAmount,
    required this.expirationMonths,
    required this.name,
    required this.description,
    required this.code,
    required this.price,
    required this.isFeatured,
    required this.image,
  });
  factory AddProductInputModel.fromEntity(
    AddProductInputEntity addProductInputEntity,
  ) => AddProductInputModel(
    isOrganic: addProductInputEntity.isOrganic,
    imageUrl: addProductInputEntity.imageUrl,
    name: addProductInputEntity.name,
    description: addProductInputEntity.description,
    code: addProductInputEntity.code,
    price: addProductInputEntity.price,
    isFeatured: addProductInputEntity.isFeatured,
    image: addProductInputEntity.image,
    numberOfCalories: addProductInputEntity.numberOfCalories,
    unitAmount: addProductInputEntity.unitAmount,
    expirationMonths: addProductInputEntity.expirationMonths,
  );
  toJson() {
    return {
      'name': name,
      'description': description,
      'code': code,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'expirationMonths': expirationMonths,
      'isOrganic': isOrganic,
    };
  }
}
