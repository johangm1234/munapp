import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/diario_emocional_screen.dart';
import 'screens/ejercicios_screen.dart';
import 'screens/evaluacion_screen.dart';

void main() {
  runApp(const MunApp());
}

class MunApp extends StatelessWidget {
  const MunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MunApp',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/diario': (context) => const DiarioEmocionalScreen(),
        '/ejercicios': (context) => const EjerciciosScreen(),
        '/evaluacion': (context) => const EvaluacionScreen(),
      },
    );
  }
}
