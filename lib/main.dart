import 'package:flutter/material.dart';
import 'package:ronip/config/routes.dart';
import 'package:ronip/ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Roni Paschoal';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: _title,
        debugShowCheckedModeBanner: false,
        routerConfig: RpRoutes.router,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: RpTheme.brandColor),
          useMaterial3: true,
        ),
      );
}
