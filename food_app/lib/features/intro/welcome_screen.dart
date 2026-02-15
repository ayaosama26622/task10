import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constants/image_app.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/core/widgets/main_button.dart';
import 'package:food_app/features/auth/pages/login_screen.dart';
import 'package:food_app/core/function/navigation.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImage.welcome ,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 70,
            right: 28,
            left: 28,
            child: Column(
              children: [
                SvgPicture.asset(AppImage.CarrottSvg),
                SizedBox(height: 35,),
                Text(
                  'Welcome\nto Green Mart',
                  textAlign: TextAlign.center,
                  style: TextStyles.headline.copyWith(
                    color: AppColor.backgroundColor,
                  )
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: TextStyles.text.copyWith(
                      color:AppColor.backgroundColor,
                    ),
                  ),
                  SizedBox(height: 35,),
                  MainButton( text: 'Get Started', onPressed: () {
                  pushReplacement(context, LoginScreen());
                  },)
              ],
            ),
          )
        ],
      ),
    );
  }
}
