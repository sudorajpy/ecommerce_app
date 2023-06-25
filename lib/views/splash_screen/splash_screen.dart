import 'package:ecommerce_app/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 101, 51, 47),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/animations/cart_animation.json',width: 300,height: 300),
          appname.text.fontFamily(bold).size(22).white.make(),
          5.heightBox,
          appversion.text.white.make(),
          // const Spacer(),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Text(credits, style: TextStyle(color: Colors.white, fontSize: 14,fontFamily: semibold))),
          20.heightBox,
          
        ],
      )),
    );
  }
}
