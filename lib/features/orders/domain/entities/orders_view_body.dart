import 'package:e_commerce_dashboard/core/helper_funcation/get_order_dummy_data.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/filter_section.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/orders_item_list_view.dart';
import 'package:flutter/material.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 24),
          FilterSection(),
          SizedBox(height: 16),
          Expanded(
            child: OrdersItemListView(
              orderEntities: [
                getDummyOrder(),
                getDummyOrder(),
                getDummyOrder(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
