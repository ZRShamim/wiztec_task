import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wiztec_project/components/colors/color.dart';
import 'package:wiztec_project/components/strings/app_strings.dart';

import 'view/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppStrings.poppins,
        primarySwatch: CustomColor.primary,
        backgroundColor: CustomColor.colorMain,
        dividerColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: CustomColor.colorMain,
          elevation: 0,
        ),
        scaffoldBackgroundColor: CustomColor.white,
      ),
      home: const HomePage(),
    );
  }
}
