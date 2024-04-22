import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //LOGO
          Icon(
            Icons.lock_open_rounded,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),

          //message aop slogan
          Text(
            "Food Delivery App",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),

          //email textField
          TextField()

        ],
      ),
    )
    );
  }
  
}