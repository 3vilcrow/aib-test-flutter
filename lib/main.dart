import 'package:aib_test/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:aib_test/core/di/service_locator.dart';
import 'package:aib_test/core/routing/app_router.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocatorSetUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AIB Test',
      getPages: RoutesHandler.appPages,
      home: const HomePage(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(235, 240, 252, 1),
        appBarTheme: const AppBarTheme(color: Color.fromRGBO(216, 224, 243, 1)),
        colorScheme: const ColorScheme.light(
          background: Color.fromRGBO(235, 240, 252, 1),
          primary: Color.fromRGBO(235, 240, 252, 1),
          primaryContainer: Color.fromRGBO(216, 224, 243, 1),
          error: Color.fromARGB(255, 220, 3, 3),
        ),
        useMaterial3: true,
      ),
    );
  }
}
