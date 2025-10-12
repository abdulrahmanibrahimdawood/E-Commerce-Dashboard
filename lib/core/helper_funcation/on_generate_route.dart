import 'package:e_commerce_dashboard/features/dashboard/views/dashboaed_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DashboaedView.routeName:
      return MaterialPageRoute(builder: (context) => const DashboaedView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
