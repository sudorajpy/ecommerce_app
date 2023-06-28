import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 9,
        title: const Text('Cart Screen', style: TextStyle(color: Color.fromARGB(255, 8, 0, 0))),
      ),
      body: const Center(
        child: Text(
          'Cart Screen',
          style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 17, 1, 1)),
        ),
      ),
    );
  }
}
