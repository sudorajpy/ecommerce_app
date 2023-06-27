import 'package:ecommerce_app/consts/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key, required this.name, required this.profession,
  });

  final String name, profession;

  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          CupertinoIcons.person, 
          color: Colors.white
          ),
      ),
      title: Text(name,style: const TextStyle(color: Pallete.whiteColor),),
      subtitle: Text(profession,style: const TextStyle(color: Pallete.whiteColor),),
    );
  }
}