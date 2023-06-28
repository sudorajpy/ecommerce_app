import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 9,
        title: const Text('Profile Screen', style: TextStyle(color: Color.fromARGB(255, 15, 1, 1),
        ),
        
        ),
      ),
      body: const Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 21, 1, 1)),
        ),
      ),
    );
  }
}
