import 'package:flutter/material.dart';
import 'package:food_buzz/auth/login_or_register.dart';
import 'package:food_buzz/models/restaurant.dart';
import 'package:food_buzz/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        //theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        //res provider
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
