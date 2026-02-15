import 'package:flutter/material.dart';
import 'package:food_app/core/styles/text.dart';


class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.onPressed,
    required this.text
  });
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed , child: Text(text ,
    style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
    ),
    );
  }
}