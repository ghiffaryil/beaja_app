import 'package:beaja/config/config.dart';
import 'package:beaja/config/flavor_type.dart';
import 'package:beaja/pages/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

MyApp initializeApp(AppConfig config) {
  WidgetsFlutterBinding.ensureInitialized();

  return MyApp(config: config);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.config});
  final AppConfig config;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          FlavorType.dev == config.flavor ? true : false,
      title: config.appName,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: const SplashScreenPage(),
    );
  }
}
