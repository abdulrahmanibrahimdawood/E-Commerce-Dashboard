import 'package:e_commerce_dashboard/core/helper_funcation/on_generate_route.dart';
import 'package:e_commerce_dashboard/core/services/custom_bloc_observer.dart';
import 'package:e_commerce_dashboard/core/services/get_it_service.dart';
import 'package:e_commerce_dashboard/features/dashboard/presentation/views/dashboaed_view.dart';
import 'package:e_commerce_dashboard/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://skzbelzesdrnxhsthsat.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNremJlbHplc2Rybnhoc3Roc2F0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjA5NjE1NzQsImV4cCI6MjA3NjUzNzU3NH0.U5hDukmqmVgITL1_Z6DP6xxSnjVKRqBBnh-QlmfzAhI',
  );
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupGetIt();
  Bloc.observer = CustomBlocObserver();
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
