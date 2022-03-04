import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_app/constants.dart';
import 'package:tiktok_app/controllers/auth_controller.dart';
import 'package:tiktok_app/views/screens/auth/login_screen.dart';
import 'package:tiktok_app/views/screens/auth/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCNDNaJrB8r_uPCKeHGFFfHlS6IrYLQ-Jw",
        authDomain: "tiktok-app-fef3a.firebaseapp.com",
        projectId: "tiktok-app-fef3a",
        storageBucket: "tiktok-app-fef3a.appspot.com",
        messagingSenderId: "1037775070595",
        appId: "1:1037775070595:web:41f0290b7412bb9e3a02b6",
      ),
    );
  } else {
    await Firebase.initializeApp().then((value) {
      Get.put(AuthController());
    });
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: LoginScreen(),
    );
  }
}
