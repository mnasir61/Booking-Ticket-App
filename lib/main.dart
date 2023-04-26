import 'package:booking_tickets_app/features/bottom_nav/botton_nav_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ticket Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavPage(),
    );
  }
}
