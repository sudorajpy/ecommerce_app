
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/colors.dart';

class CommonButton extends StatelessWidget {
  Widget child;
  double? height;
  double? width;
  VoidCallback? onTap;

  CommonButton({required this.child, this.height, this.width, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: height ?? 30,
            width: width ?? 40,
            transform: Matrix4.rotationZ(-0.13),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(17),
                bottomRight: Radius.circular(23),
                bottomLeft: Radius.circular(20),
              ),
              color: kDarkYellow,
            ),
            // child: Center(child: child),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 5),
            child: child,
          )
        ],
      ),
    );
  }
}