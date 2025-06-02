import 'package:flutter/material.dart';
import 'diario_emocional_screen.dart';
import 'ejercicios_screen.dart';
import 'evaluacion_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  Widget buildCard(String title, IconData icon, Function onTap) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        elevation: 3,
        child: ListTile(
          leading: Icon(icon, color: Color(0xFF7C3AED)),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 174, 127, 255),
        title: const Text('MunApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hola, ¿cómo te sientes hoy?',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            buildCard('📓 Diario emocional', Icons.book, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const DiarioEmocionalScreen()));
            }),
            buildCard('🧘 Ejercicios de relajación', Icons.self_improvement, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const EjerciciosScreen()));
            }),
            buildCard('📈 Evaluación semanal', Icons.assessment, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const EvaluacionScreen()));
            }),
          ],
        ),
      ),
    );
  }
}
