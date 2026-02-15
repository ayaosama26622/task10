import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constants/image_app.dart';
import 'package:food_app/core/function/navigation.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/core/widgets/custom_text_from_field.dart';
import 'package:food_app/core/widgets/main_button.dart';
import 'package:food_app/core/widgets/password_from_field.dart';
import 'package:food_app/core/function/validation.dart';
import 'package:food_app/features/auth/pages/Login_screen.dart';

class SignupScreen extends StatefulWidget{
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  final formKey = GlobalKey<FormState >();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: formKey,
              autovalidateMode:AutovalidateMode.onUserInteraction,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentGeometry.center,
                      child: SvgPicture.asset(AppImage.carrotSvg)),
                    const SizedBox(height: 40,),
                    Text("Sign Up" , style: TextStyles.title.copyWith(fontWeight: FontWeight.w600,)),
                    const SizedBox(height: 16,),
                    Text("Enter your credentials to continue" , style: TextStyles.text.copyWith(fontWeight: FontWeight.w400,
                    color: AppColor.grayColor)),
                    const SizedBox(height: 38,),

                    Text("Name" , style: TextStyles.text.copyWith(fontWeight: FontWeight.w600, color:AppColor.grayColor )),
                    const SizedBox(height: 8,),
                    CustomTextFromField(
                      keyboardType: TextInputType.name,
                      hintText: "sayed abdulaziz",
                      validator:(value){
                        if (value!.isEmpty){
                          return ' Please enter your name';
                        }
                        else if (
                          !isEmailValid(value)
                        )
                        {
                          return' Please enter your name';
                        }
                        return null;
                      }
                    ),
                    const SizedBox(height: 16,),
                    Text("Email" , style: TextStyles.text.copyWith(fontWeight: FontWeight.w600, color:AppColor.grayColor )),
                    const SizedBox(height: 8,),
                    CustomTextFromField(
                      keyboardType: TextInputType.emailAddress,
                      hintText: "example@gmail.com",
                      validator:(value){
                        if (value!.isEmpty){
                          return ' Please enter your email';
                        }
                        else if (
                          !isEmailValid(value)
                        )
                        {
                          return' Please enter your email';
                        }
                        return null;
                      }
                    ),
                    const SizedBox(height: 16,),
                    Text("Password" , style: TextStyles.text.copyWith(fontWeight: FontWeight.w600, color:AppColor.grayColor )),
                    const SizedBox(height: 8,),
                    PasswordFromField(
                      hintText: '*************',
                    ),
                    const SizedBox(height: 16,),
                    
                      const SizedBox(height: 16,),
                      MainButton(text: 'Sign Up', onPressed: () {
                        if (formKey.currentState!.validate()){}
                      }),
                      const SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text : 'Already have an account?',
                                  style: TextStyles.caption.copyWith(fontWeight: FontWeight.bold)
                                  
                                ),
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: TextButton(onPressed: () {
                                    pushTo(context, LoginScreen() );
                                  } , child: Text("Login",
                                  style: TextStyles.caption.copyWith(
                                    color: AppColor.PrimaryColor,
                                  ),
                                  )
                                  )
                                ),
                              ]
                
                            ),
                        
                      )
                        ]
                      )
                  ]
                      ),
              ),
            )
        
            ),
        )
    );
    
    
  }
}
