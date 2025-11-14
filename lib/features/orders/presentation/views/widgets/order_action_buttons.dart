import 'package:flutter/material.dart';

import '../../../../../core/enums/order_enum.dart';
import '../../../domain/entities/data/models/order_entity.dart';

class OrderActionButtons extends StatelessWidget {
  const OrderActionButtons({super.key, required this.orderEntity});

  final OrderEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Visibility(
          visible: orderEntity.status == OrderStatusEnum.pending,
          child: ElevatedButton(onPressed: () {}, child: const Text('Accept')),
        ),
        Visibility(
          visible: orderEntity.status == OrderStatusEnum.pending,
          child: ElevatedButton(onPressed: () {}, child: const Text('Reject')),
        ),
        Visibility(
          visible: orderEntity.status == OrderStatusEnum.accepted,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Delivered'),
          ),
        ),
      ],
    );
  }
}
