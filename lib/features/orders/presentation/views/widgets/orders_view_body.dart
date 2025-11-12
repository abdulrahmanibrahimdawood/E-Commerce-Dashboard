import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/filter_section.dart';
import 'package:flutter/material.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Column(children: [SizedBox(height: 24), FilterSection()]),
    );
  }
}
