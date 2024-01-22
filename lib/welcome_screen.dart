import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            ClipOval(
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.green.withAlpha(100),
                child: Icon(Icons.language_outlined,
                size: 24,
                ),
                ),
            ),
            Expanded(child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green.withAlpha(100),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    MediaQuery.of(context).size.width), 
              bottomRight: Radius.circular(
                MediaQuery.of(context).size.width))),
              
              //child: Image.asset("/assets/rest.jpg"),
              child: Icon(Icons.search,
              color: Colors.black,),
            )),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Text("Helping the Environment",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.grey,
              fontSize: 14),
              textAlign: TextAlign.center,
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/login");
            },
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Icon(Icons.arrow_forward),
            ))),
            
          ],
        ),
      ),
    );
  }
}