import 'package:ecom_tracker/homepage.dart';
import 'package:ecom_tracker/start%20app/balancestart.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    routes: {"HomePage": (content) => const HomePage()},
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.purple,
        centerTitle: true,
      ),
    ),
    home: const StartBalance(),
  ));
}
