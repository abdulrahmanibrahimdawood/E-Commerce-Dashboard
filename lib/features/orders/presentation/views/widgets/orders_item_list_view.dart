import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_entity.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/order_item.dart';
import 'package:flutter/material.dart';

class OrdersItemListView extends StatelessWidget {
  const OrdersItemListView({super.key, required this.orderEntities});
  final List<OrderEntity> orderEntities;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orderEntities.length,
      itemBuilder: (context, index) =>
          OrderItemWidget(orderEntity: orderEntities[index]),
    );
  }
}
