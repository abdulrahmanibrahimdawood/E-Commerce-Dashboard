import 'package:e_commerce_dashboard/core/helper_funcation/build_bar.dart';
import 'package:e_commerce_dashboard/features/add_product/presentation/manager/cubit/add_product_cubit.dart';
import 'package:e_commerce_dashboard/features/add_product/presentation/views/widgets/add_product_view_body.dart';
import 'package:e_commerce_dashboard/features/add_product/presentation/views/widgets/custom_progress_hud.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductViewBodyBlocBuilder extends StatelessWidget {
  const AddProductViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
        if (state is AddProductSuccess) {
          buildBar(context, 'Product added successfully');
        }
        if (state is AddProductError) {
          buildBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHUD(
          isLoading: state is AddProductLoading,
          child: AddProductViewBody(),
        );
      },
    );
  }
}
