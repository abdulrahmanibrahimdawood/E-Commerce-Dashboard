import 'package:e_commerce_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:e_commerce_dashboard/core/repos/products_repo/product_repo.dart';
import 'package:e_commerce_dashboard/features/add_product/domain/entites/add_product_input_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:meta/meta.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this.imagesRepo, this.productRepo)
    : super(AddProductInitial());
  final ImagesRepo imagesRepo;
  final ProductRepo productRepo;

  Future<void> addProduct(AddProductInputEntity addProductInputEntity) async {
    emit(AddProductLoading());
    var result = await imagesRepo.uploadImage(addProductInputEntity.image);
    result.fold(
      (failure) => emit(AddProductError(errMessage: failure.message)),
      (url) async {
        addProductInputEntity.imageUrl = url;
        var result = await productRepo.addProduct(addProductInputEntity);

        result.fold(
          (failure) => emit(AddProductError(errMessage: failure.message)),
          (success) => emit(AddProductSuccess()),
        );
      },
    );
  }
}
