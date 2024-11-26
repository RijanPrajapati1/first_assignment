import 'package:first_assignment/view/area_of_circle.dart';
import 'package:first_assignment/view/arthimetic.dart';
import 'package:first_assignment/view/dashboard.dart';
import 'package:first_assignment/view/simple_interest.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Math Utility Dashboard',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
        '/arithmetic': (context) => const Arithmetic(),
        '/simple_interest': (context) => const SimpleInterest(),
        '/area_circle': (context) => const AreaOfCircle(),
      },
    );
  }
}
