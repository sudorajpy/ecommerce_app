import 'package:ecommerce_app/consts/consts.dart';
import 'package:flutter/material.dart';


class LoginField extends StatelessWidget {
  final String hintText;
  final String labelText;
  const LoginField({super.key,required this.hintText,required this.labelText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
    
      constraints: const BoxConstraints(maxWidth: 300),
      child: TextFormField(
        
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 600, vertical: 15),
          enabledBorder: OutlineInputBorder(
            borderSide:const BorderSide(color: Pallete.borderColor,width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:const BorderSide(color: Pallete.gradient2),
            borderRadius: BorderRadius.circular(10),
          ),
          
        ),
      ),
    );
  }
}