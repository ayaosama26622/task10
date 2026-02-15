import 'package:flutter/material.dart';
import 'package:food_app/core/function/navigation.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/core/widgets/number_from_field.dart';
import 'package:food_app/core/widgets/main_button.dart';
import 'package:food_app/features/auth/pages/login_screen.dart';
import 'package:food_app/features/auth/pages/Verification_screen.dart';
class NumberScreen extends StatefulWidget{
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreen();
}

class _NumberScreen extends State<NumberScreen> {
  final formKey = GlobalKey<FormState >();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        leading: IconButton(onPressed: (){
          pushTo(context, LoginScreen());
        },
        icon: Icon(Icons.arrow_back_ios_new)),
      ),
      
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
                    
                    const SizedBox(height: 40,),
                    Text("Enter your mobile number" , style: TextStyles.title.copyWith(fontWeight: FontWeight.w700,)),
                    const SizedBox(height: 16,),
                    Text("We need to verify you. We will send you a one time verification code. " , style: TextStyles.text.copyWith(fontWeight: FontWeight.w400,
                    color: AppColor.grayColor)),
                    const SizedBox(height: 48,),
                    NumberFromField(
                      keyboardType: TextInputType.number,
                      hintText: "01xxxxxxxxxx",
                      validator:(value){
                        if (value!.isEmpty){
                          return ' Please enter your number';
                        }
                        else if (
                          value.length<11
                        )
                        {
                          return'number must be 11 digits';
                        }
                        return null;
                      }
                    ),
                    
                    
                    
                      const SizedBox(height: 100,),
                      MainButton(text: 'Next', onPressed: () {
                        if (formKey.currentState!.validate()){
                          pushReplacement(context,  VerificationScreen());
                        }
                      }),
                      const SizedBox(height: 16,),
                      
          ]
        )
    ),
            )
          ),
          ),
    );
  }
}
