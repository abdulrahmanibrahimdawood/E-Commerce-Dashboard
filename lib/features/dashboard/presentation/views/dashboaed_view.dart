import 'package:e_commerce_dashboard/features/dashboard/presentation/views/widgets/dashboard_view_body.dart';
import 'package:flutter/material.dart';

class DashboaedView extends StatelessWidget {
  const DashboaedView({super.key});
  static const routeName = 'dashboard';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: DashboardViewBody());
  }
}
