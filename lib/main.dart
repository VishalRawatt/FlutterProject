import 'package:first/Api_call.dart';
import 'package:first/counter_class.dart';
import 'package:first/login.dart';
import 'package:first/providers/counter_provider.dart';
import 'package:first/providers/login_provider.dart';
import 'package:first/splash.dart';
import 'package:first/user_list.dart';
import 'package:first/user_list_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => CounterProvider()),
    ChangeNotifierProvider(create: (_)=> LoginProvider()),
  ], child: const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      // home: const ApiCall(),
      home: const LoginForm(),
    );
  }
}
