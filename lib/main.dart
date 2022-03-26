import 'package:accounting/screens/home_screen.dart';
import 'package:accounting/style/accounting_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AccountingTheme.lightTheme(),
      home: const HomeScreen(),
    );
  }
}
