import 'package:flutter/material.dart';
import 'package:aib_test/core/di/service_locator.dart';
import 'package:aib_test/core/routing/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocatorSetUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AIB Test',
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
      routeInformationProvider: goRouter.routeInformationProvider,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(235, 240, 252, 1),
        appBarTheme: const AppBarTheme(color: Color.fromRGBO(216, 224, 243, 1)),
        colorScheme: const ColorScheme.light(
          background: Color.fromRGBO(235, 240, 252, 1),
          primary: Color.fromRGBO(235, 240, 252, 1),
          error: Color.fromARGB(255, 220, 3, 3),
        ),
        useMaterial3: true,
      ),
    );
  }
}
