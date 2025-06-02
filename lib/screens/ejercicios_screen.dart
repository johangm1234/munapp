import 'package:flutter/material.dart';

class EjerciciosScreen extends StatelessWidget {
  const EjerciciosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ejercicios = [
      'Respiración profunda',
      'Relajación muscular progresiva',
      'Meditación guiada',
      'Visualización positiva',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicios de relajación'),
        backgroundColor: Color(0xFF7C3AED),
      ),
      body: ListView.builder(
        itemCount: ejercicios.length,
        itemBuilder: (context, index) => Card(
          margin: const EdgeInsets.all(8),
          child: ListTile(
            leading: const Icon(Icons.play_circle_fill, color: Color(0xFF7C3AED)),
            title: Text(ejercicios[index]),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Ejercicio: ${ejercicios[index]}')),
              );
            },
          ),
        ),
      ),
    );
  }
}
