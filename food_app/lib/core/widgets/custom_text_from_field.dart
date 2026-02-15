import 'package:flutter/material.dart';


class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    this.hintText,
    this.keyboardType,
    this.validator,
  });
  final String? hintText ;
  final TextInputType? keyboardType ;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      onTapOutside: (event){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        hintText: hintText,        
        ),
        validator:validator,
        onChanged: (value) {
          
        },
      );
  }
}