import 'package:flutter/material.dart';
import 'package:ronip/config/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Roni Paschoal';
  static const Color _brandColor = Colors.blue;

  Widget get _body {
    return MaterialApp.router(
      title: _title,
      debugShowCheckedModeBanner: false,
      routerConfig: RpRoutes.router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: _brandColor),
        useMaterial3: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => _body;
}
