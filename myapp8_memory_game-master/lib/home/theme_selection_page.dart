import 'package:flutter/material.dart';

class ThemeSelectionPage extends StatelessWidget {
  const ThemeSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: const Text('Selecciona la Temática'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'game', arguments: {
                  'level': ModalRoute.of(context)!.settings.arguments as String,
                  'theme': 'nature',
                });
              },
              child: const Text('Naturaleza'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'game', arguments: {
                  'level': ModalRoute.of(context)!.settings.arguments as String,
                  'theme': 'animals',
                });
              },
              child: const Text('Animales'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'game', arguments: {
                  'level': ModalRoute.of(context)!.settings.arguments as String,
                  'theme': 'space',
                });
              },
              child: const Text('Espacio'),
            ),
          ],
        ),
      ),
    );
  }
}
