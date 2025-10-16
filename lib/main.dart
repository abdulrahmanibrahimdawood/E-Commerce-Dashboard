import 'package:e_commerce_dashboard/core/helper_funcation/on_generate_route.dart';
import 'package:e_commerce_dashboard/core/services/custom_bloc_observer.dart';
import 'package:e_commerce_dashboard/core/services/get_it_service.dart';
import 'package:e_commerce_dashboard/features/dashboard/presentation/views/dashboaed_view.dart';
import 'package:e_commerce_dashboard/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
