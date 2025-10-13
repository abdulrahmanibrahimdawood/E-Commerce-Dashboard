import 'package:e_commerce_dashboard/features/add_product/presentation/views/add_product_view.dart';
import 'package:e_commerce_dashboard/features/dashboard/presentation/views/dashboaed_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DashboaedView.routeName:
      return MaterialPageRoute(builder: (context) => const DashboaedView());
    case AddProductView.routeName:
      return MaterialPageRoute(builder: (context) => const AddProductView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
