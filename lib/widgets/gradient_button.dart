import 'package:ecommerce_app/consts/colors.dart';
import 'package:flutter/material.dart';


class GradientButton extends StatelessWidget {
  final String buttonText;
  const GradientButton({super.key,required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Pallete.gradient1,
            Pallete.gradient2,
            Pallete.gradient3
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
        )
      ),
      child: ElevatedButton(
        onPressed: (){}, 
        
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          // maximumSize: const Size(400, 50)
        ),
        child: Text(buttonText, style: TextStyle(color: Pallete.whiteColor, fontSize: 18)),
        ),
    );
  }
}