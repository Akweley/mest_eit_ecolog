import 'package:ecolog/login_screen.dart';
import 'package:ecolog/splash_screen.dart';
import 'package:ecolog/welcome_screen.dart';
import 'package:flutter/material.dart';

class EcologApp extends StatelessWidget {
  const EcologApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      initialRoute: "/splash",
      routes: <String, WidgetBuilder>{
        "/splash": (context) => SplashScreen(),
        "/welcome": (context) => WelcomeScreen(),
        "/login": (context) => LoginScreen(),
      }
    );
  }
}

