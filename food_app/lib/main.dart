import 'dart:io';
import 'package:flutter/material.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/styles/text.dart';
import 'package:food_app/core/constants/font_app.dart';
import 'package:food_app/features/intro/splash_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppFont.poppins,
        scaffoldBackgroundColor: AppColor.backgroundColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.PrimaryColor,
            minimumSize: const Size(double.infinity, 58),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            foregroundColor: AppColor.backgroundColor,
          ), 
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(padding: EdgeInsets.zero,
          minimumSize: Size(60, 30)),
          
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyles.text,
        fillColor: AppColor.accentColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        ),


        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.PrimaryColor,
          onSurface: AppColor.blackColor)
        ),
        builder: (context, child) {
          return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Scaffold(),);
        },
        home: SplashScreen(),
        
    );
  }
}
