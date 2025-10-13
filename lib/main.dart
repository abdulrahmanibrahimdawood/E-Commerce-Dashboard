import 'package:e_commerce_dashboard/core/helper_funcation/on_generate_route.dart';
import 'package:e_commerce_dashboard/features/dashboard/presentation/views/dashboaed_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ECommerceDashBoard());
}

class ECommerceDashBoard extends StatelessWidget {
  const ECommerceDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: DashboaedView.routeName,
    );
  }
}
