import 'package:flutter/material.dart';


class PasswordFromField extends StatefulWidget {
  const PasswordFromField({
    super.key,
    this.hintText
  });
  final String? hintText ;

  @override
  State<PasswordFromField> createState() => _PasswordFromFieldState();
}

class _PasswordFromFieldState extends State<PasswordFromField> {
  bool obscureText =true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: IconButton(onPressed: () {
          setState(() {
            obscureText =!obscureText ;
          });
        }, icon: Icon(obscureText ? Icons.visibility_off : Icons.remove_red_eye))
        
        ),
        validator: (input){
          if (input!.isEmpty){
            return 'Please enter your password';
          }
          else if (input.length<8){
            return 'Password must be at least 8 characters';
          }
          return null;
        },
    
      );
  }
}