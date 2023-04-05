import 'package:fit__food/features/views/home_screen.dart';
import 'package:flutter/material.dart';

import 'features/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(useMaterial3: true,brightness: Brightness.light),
        home: const HomePage());
  }
}
