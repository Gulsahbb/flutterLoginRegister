import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';
import 'package:flutter_login_register/first_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Debug banner'ı kaldır ve status bar rengini ayarla
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debug yazısını kaldır
      title: 'Flutter Auth Demo',
      theme: ThemeData(
        // Ana renk paleti
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2196F3), // Mavi tonu
          primary: const Color(0xFF2196F3),
          secondary: const Color(0xFF03A9F4),
          tertiary: const Color(0xFF4CAF50),
          background: Colors.grey[100]!,
        ),

        // Font ailesi
        fontFamily: 'Poppins', // Poppins font'unu kullanmak için

        // Metin temaları
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A1A1A),
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Color(0xFF1A1A1A),
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Color(0xFF666666),
          ),
        ),

        // Buton teması
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),

        // Input dekorasyon teması
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF2196F3), width: 2),
          ),
          labelStyle: const TextStyle(color: Color(0xFF666666)),
          prefixIconColor: Color(0xFF666666),
        ),

        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}
