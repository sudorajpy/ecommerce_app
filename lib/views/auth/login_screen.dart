import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/widgets/gradient_button.dart';
import 'package:ecommerce_app/widgets/login_field.dart';
import 'package:ecommerce_app/widgets/social_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              const Text('Sign In',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 44,
                      color: Colors.white)),
              50.heightBox,
              const SocialButton(
                  iconPath: 'assets/svgs/g_logo.svg',
                  label: 'Sign in with Google'),
              20.heightBox,
              const SocialButton(
                  iconPath: 'assets/svgs/f_logo.svg',
                  label: 'Sign in with Facebook',
                  horizontalPadding: 50),
              20.heightBox,
              const Text('Or',
                  style: TextStyle(color: Pallete.whiteColor, fontSize: 18)),
              20.heightBox,
              const LoginField(
                hintText: 'Email',
                labelText: 'Email',
              ),
              20.heightBox,
              const LoginField(
                hintText: 'Password',
                labelText: 'Password',
              ),
              30.heightBox,
              const GradientButton(
                buttonText: 'Sign In',
              ),
              10.heightBox,
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child:const Text('Forgot Password?',
                          style: TextStyle(
                              color: Pallete.whiteColor, fontSize: 18))),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child:const Text('Don\'t have an account?',
                          style: TextStyle(
                              color: Pallete.whiteColor, fontSize: 18))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
