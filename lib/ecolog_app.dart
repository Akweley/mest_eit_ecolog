import 'package:ecolog/home_screen.dart';
import 'package:ecolog/login_screen.dart';
import 'package:ecolog/splash_screen.dart';
import 'package:ecolog/welcome_screen.dart';
import 'package:flutter/material.dart';

class EcologApp extends StatelessWidget {
  const EcologApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: "/",
        routes: <String, WidgetBuilder>{
          "/": (context) => const SplashScreen(),
          "/welcome": (context) => const WelcomeScreen(),
          "/login": (context) => const LoginScreen(),
          "/home": (context) => const HomeScreen(),
        });
  }
}