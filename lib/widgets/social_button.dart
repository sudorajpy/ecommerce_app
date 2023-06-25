import 'package:ecommerce_app/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SocialButton extends StatelessWidget {
  final double horizontalPadding;
  final String iconPath;
  final String label;
  const SocialButton({super.key, required this.iconPath, required this.label, this.horizontalPadding = 60});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: (){}, 
      icon: SvgPicture.asset(
        iconPath,
        height: 30,
        width: 30,
        color: Pallete.whiteColor,
        ),
      label:Text(label,style:const TextStyle(color: Pallete.whiteColor, fontSize: 18),),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 15),
        backgroundColor: Pallete.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side:const BorderSide(color: Pallete.borderColor, width: 3),
        ),
        
        )
      );
  }
}