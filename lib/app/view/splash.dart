import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 112, 49),
      // appBar: AppBar(backgroundColor: const Color.fromARGB(255, 47, 112, 49)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('CBT APP', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 43,
                    fontWeight: FontWeight.w700,
                  )
                  ),
                ],
              ),
            ),
            Text('get smarter today everyday with our app', style: TextStyle(color: Colors.white),)
              ],
            )
        ),
      );
  }
}