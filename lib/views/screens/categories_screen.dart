import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 9,
        title: const Text('Categories Screen', style: TextStyle(color: Color.fromARGB(255, 20, 1, 1))),
      ),
      body: const Center(
        child: Text(
          'Categories Screen',
          style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 54, 5, 5)),
        ),
      ),
    );
  }
}
