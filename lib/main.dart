import 'package:flutter/material.dart';
import 'src/presentation/pages/auth/login/login_page.dart';
import 'src/presentation/pages/auth/register/register_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue),
          useMaterial3: true,
        ),

        initialRoute: 'login',
        routes: {
          'login'    : (context) => const LoginPage(),
          'register' : (context) => const RegisterPage(),
        },
    );
  }
}
