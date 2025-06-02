import 'package:flutter/material.dart';

class DiarioEmocionalScreen extends StatelessWidget {
  const DiarioEmocionalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Diario emocional'),
        backgroundColor: Color(0xFF7C3AED),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('¿Cómo te sentiste hoy?', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            TextField(
              controller: controller,
              maxLines: 8,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Escribe lo que sientes...',
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('¡Entrada guardada!')),
                  );
                  controller.clear();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7C3AED),
                ),
                child: const Text('Guardar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
