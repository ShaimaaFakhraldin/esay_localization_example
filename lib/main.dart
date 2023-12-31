import 'package:esay_localization_example/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
   await EasyLocalization.ensureInitialized();


  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/lang',
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales ,
        locale: context.locale ,
        theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeUi(),
    );
  }
}

