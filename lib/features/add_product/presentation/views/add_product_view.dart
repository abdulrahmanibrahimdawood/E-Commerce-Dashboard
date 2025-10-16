import 'package:e_commerce_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:e_commerce_dashboard/core/repos/products_repo/product_repo.dart';
import 'package:e_commerce_dashboard/core/services/get_it_service.dart';
import 'package:e_commerce_dashboard/core/widgets/build_app_bar.dart';
import 'package:e_commerce_dashboard/features/add_product/presentation/manager/cubit/add_product_cubit.dart';
import 'package:e_commerce_dashboard/features/add_product/presentation/views/widgets/add_product_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const routeName = 'add-product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Add Product'),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => AddProductCubit(
            getIt.get<ImagesRepo>(),
            getIt.get<ProductRepo>(),
          ),
          child: AddProductViewBody(),
        ),
      ),
    );
  }
}
