import 'package:flutter/material.dart';

class EvaluacionScreen extends StatefulWidget {
  const EvaluacionScreen({Key? key}) : super(key: key);

  @override
  State<EvaluacionScreen> createState() => _EvaluacionScreenState();
}

class _EvaluacionScreenState extends State<EvaluacionScreen> {
  double ansiedad = 5;
  double energia = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evaluación semanal'),
        backgroundColor: const Color(0xFF7C3AED),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text('Nivel de ansiedad', style: TextStyle(fontSize: 16)),
            Slider(
              value: ansiedad,
              min: 0,
              max: 10,
              divisions: 10,
              label: ansiedad.round().toString(),
              activeColor: Color(0xFF7C3AED),
              onChanged: (value) {
                setState(() {
                  ansiedad = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text('Nivel de energía', style: TextStyle(fontSize: 16)),
            Slider(
              value: energia,
              min: 0,
              max: 10,
              divisions: 10,
              label: energia.round().toString(),
              activeColor: Color(0xFF7C3AED),
              onChanged: (value) {
                setState(() {
                  energia = value;
                });
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Resultados enviados:\nAnsiedad: ${ansiedad.round()} - Energía: ${energia.round()}',
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF7C3AED),
              ),
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
