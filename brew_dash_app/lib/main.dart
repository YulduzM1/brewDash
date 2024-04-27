import 'package:brew_dash_app/auth/login_or_register.dart';
import 'package:brew_dash_app/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:brew_dash_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    MultiProvider(providers: [
      //theme provider
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),

      //restaurant Provider
      ChangeNotifierProvider(
        create: (context) => Restaurant(),
      ),
    ],
     child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

