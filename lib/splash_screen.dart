import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:ecolog/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

void startTimer() {
  const oneSec = Duration(seconds: 3);
  Timer.periodic(
    oneSec,
    (Timer timer) {
      print("Timed: ");
      Navigator.of(context).pushNamed("/welcome");
      // Navigator.of(context)
      // .push(MaterialPageRoute(builder: (BuildContext context) {
      // return const WelcomeScreen();
      // }));
      timer.cancel();
    },
  );
}

@override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white.withAlpha(100),
              child: const Icon(Icons.language,
                  color: Colors.white, 
                  size: 50),
            ),
          ),
          Text(
          "Ecolog",
          style: TextStyle(
            fontSize: 24,
            decoration: TextDecoration.none,
            color: Colors.white),
            ),
        ],
      ),
    );
  }
}

