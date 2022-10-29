import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/loginpage.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KeyboardVisibilityProvider(
        child: Loginpage(),
      ),
    ),
  );
}
