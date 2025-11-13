import 'package:e_commerce_dashboard/core/helper_funcation/get_order_dummy_data.dart';
import 'package:e_commerce_dashboard/core/services/get_it_service.dart';
import 'package:e_commerce_dashboard/core/widgets/build_app_bar.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/order_repo.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/manager/fetch_orders_cubit/fetch_orders_cubit.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/orders_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});
  static const routeName = 'orders';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchOrdersCubit(getIt.get<OrderRepo>()),
      child: Scaffold(
        appBar: buildAppBar('Orders'),
        body: OrdersViewBodyBlocBuilder(),
      ),
    );
  }
}

class OrdersViewBodyBlocBuilder extends StatefulWidget {
  const OrdersViewBodyBlocBuilder({super.key});

  @override
  State<OrdersViewBodyBlocBuilder> createState() =>
      _OrdersViewBodyBlocBuilderState();
}

class _OrdersViewBodyBlocBuilderState extends State<OrdersViewBodyBlocBuilder> {
  @override
  void initState() {
    context.read<FetchOrdersCubit>().fetchOrders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchOrdersCubit, FetchOrdersState>(
      builder: (context, state) {
        if (state is FetchOrdersSuccess) {
          return OrdersViewBody(orders: state.orders);
        } else if (state is FetchOrdersFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return Skeletonizer(
            enabled: state is FetchOrdersLoading,
            child: OrdersViewBody(
              orders: [getDummyOrder(), getDummyOrder(), getDummyOrder()],
            ),
          );
        }
      },
    );
  }
}
