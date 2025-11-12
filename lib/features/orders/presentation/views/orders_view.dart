import 'package:e_commerce_dashboard/core/widgets/build_app_bar.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/orders_view_body.dart';
import 'package:flutter/material.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});
  static const routeName = 'orders';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar('Orders'), body: OrdersViewBody());
  }
}
