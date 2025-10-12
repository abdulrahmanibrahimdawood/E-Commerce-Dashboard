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
      home: Scaffold(),
    );
  }
}
