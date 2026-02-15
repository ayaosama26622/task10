import 'package:flutter/material.dart';
import 'package:food_app/core/function/navigation.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/core/widgets/main_button.dart';
import 'package:food_app/core/widgets/otp_field.dart';
import 'package:food_app/core/widgets/time.dart';
import 'package:food_app/features/auth/pages/number_screen.dart';


class VerificationScreen extends StatefulWidget{
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreen();
}

class _VerificationScreen extends State<VerificationScreen> {
  final formKey = GlobalKey<FormState >();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        leading: IconButton(onPressed: (){
          pushTo(context, NumberScreen());
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
                    Text("Enter verification code" , style: TextStyles.title.copyWith(fontWeight: FontWeight.w700,)),
                    const SizedBox(height: 16,),
                    Text("We have sent SMS to: 01XXXXXXXXXX" , style: TextStyles.text.copyWith(fontWeight: FontWeight.w400,
                    color: AppColor.grayColor)),
                    const SizedBox(height: 48,),
                    OtpField(),
                    const SizedBox(height: 16,),
                    Align(
                      alignment: AlignmentGeometry.centerRight,
                        child: TextButton(onPressed: () {
                          pushReplacement(context, NumberScreen());
                        },
                          child: Text("Change Phone Number?",
                          style: TextStyles.subtitle.copyWith(
                          color: AppColor.grayColor
                          ),
                          )
                          ),
                      ),
                    
                      const SizedBox(height: 100,),
                      MainButton(text: 'Confirm', onPressed: () {
                        if (formKey.currentState!.validate()){}
                      }),
                      const SizedBox(height: 16,),
                      ResendOtpTimer(),
                      
          ]
        )
    ),
            )
          ),
          ),
    );
  }
}
