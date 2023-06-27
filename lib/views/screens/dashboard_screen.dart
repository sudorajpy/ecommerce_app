import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard Screen', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
