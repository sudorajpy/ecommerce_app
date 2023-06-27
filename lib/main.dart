import 'package:ecommerce_app/components/side_menu.dart';
import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E Commerce App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme:const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
        fontFamily: regular,
        useMaterial3: true,
      ),
      home:const SideBarMenu(),
    );
    
  }
}

