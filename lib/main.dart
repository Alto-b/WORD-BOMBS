import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:word_bomb/app/routes/app_pages.dart';
import 'package:word_bomb/app_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HangMan',
      initialRoute: AppPages.INITIAL,
      initialBinding: AppBinding(),
      getPages: AppPages.routes,
      // defaultTransition: Transition.cupertino,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF1f2631),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF1f2631),
          )),
    );
  }
}
