import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/widgets/gradient_button.dart';
import 'package:ecommerce_app/widgets/login_field.dart';
import 'package:ecommerce_app/widgets/social_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              54.heightBox,
              Image.asset('assets/images/signin_balls.png'),
              const Text('Sign Up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 44,
                      color: Colors.white)),
              40.heightBox,
              const LoginField(
                hintText: 'Name',
              ),
              20.heightBox,
              const LoginField(
                hintText: 'Email',
              ),
              20.heightBox,
              const LoginField(
                hintText: 'Password',
              ),
              30.heightBox,
              const GradientButton(
                buttonText: 'Sign In',
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SocialIconButton(
                    iconPath: 'assets/svgs/g_logo.svg',
                  ),
                  50.widthBox,
                  const SocialIconButton(
                    iconPath: 'assets/svgs/f_logo.svg',
                  ),
                ],
              ),
              10.heightBox,
              TextButton(
                  onPressed: () {},
                  child: const Text('Already have an account?',
                      style:
                          TextStyle(color: Pallete.whiteColor, fontSize: 18))),
            ],
          ),
        ),
      ),
    );
  }
}
