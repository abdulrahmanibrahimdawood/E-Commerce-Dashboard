import 'package:e_commerce_dashboard/features/add_product/domain/entites/add_product_input_entity.dart';

abstract class ProductRepo {
  Future<void> addProduct(AddProductInputEntity addProductInputIntity);
}
