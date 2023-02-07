import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_cli/app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
        primarySwatch: const MaterialColor(
          0xffFFFFFF,
          {
            50: Color(0xffFFFFFF),
            100: Color(0xffFFFFFF),
            200: Color(0xffFFFFFF),
            300: Color(0xffFFFFFF),
            400: Color(0xffFFFFFF),
            500: Color(0xffFFFFFF),
            600: Color(0xffFFFFFF),
            700: Color(0xffFFFFFF),
            800: Color(0xffFFFFFF),
            900: Color(0xffFFFFFF),
          },
        ),
      ),
      title: "Ardas Interior",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
