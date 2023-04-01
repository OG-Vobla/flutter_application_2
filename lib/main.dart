import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/homePage.dart';
import 'package:flutter_application_2/services/services.dart';
import 'package:provider/provider.dart';
import 'authPage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(const MyThemeApp());
}

class MyThemeApp extends StatelessWidget {
  const MyThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: DbConnection().currentUser,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        initialRoute: '/',
        routes: {
          '/': (context) => const AuthPage(),
          '/home': (context) =>const HomePage(),
        },
      ),
    );
  }
}
