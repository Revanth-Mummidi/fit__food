import 'package:fit__food/features/views/home_screen.dart';
import 'package:flutter/material.dart';

import 'features/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(useMaterial3: true,brightness: Brightness.dark),
        home: const LoginPage());
  }
}
