import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'forgot_password_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/recovery': (context) => const ForgotPasswordPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.red,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.red, width: 2.0),
          ),
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
