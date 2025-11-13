import 'package:e_commerce_dashboard/core/services/get_it_service.dart';
import 'package:e_commerce_dashboard/core/widgets/build_app_bar.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/order_repo.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/manager/fetch_orders_cubit/fetch_orders_cubit.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/orders_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});
  static const routeName = 'orders';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchOrdersCubit(getIt.get<OrderRepo>()),
      child: Scaffold(appBar: buildAppBar('Orders'), body: OrdersViewBody()),
    );
  }
}
