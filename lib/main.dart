import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:goandgoapp/Authentification/global/global.dart';
import 'package:goandgoapp/Authentification/splashScreen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Chat/screens/chat_screen.dart';
import 'Home/mainScreens/home_screen.dart';
import 'Profile/Profile.dart';

Future<void> main() async
{

  WidgetsFlutterBinding.ensureInitialized();

  sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp();

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: ' GO&GO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/chat': (context) => const ChatScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}


