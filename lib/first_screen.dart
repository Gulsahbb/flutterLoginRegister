import 'package:flutter/material.dart';
import 'package:flutter_login_register/login_screen.dart';
import 'package:flutter_login_register/register_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Theme.of(context).colorScheme.background,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.lock_outlined,
                  size: 100,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 20),
                Text(
                  'Hoş Geldiniz',
                  style: Theme.of(context).textTheme.displayLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('KAYIT OL'),
                ),
                const SizedBox(height: 16),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('GİRİŞ YAP'),
                ),
                const SizedBox(height: 40),
                const Divider(),
                const SizedBox(height: 40),
                OutlinedButton.icon(
                  onPressed: () {
                    // Google ile giriş işlemi
                  },
                  icon: Image.asset(
                    'assets/images/google_logo.png',
                    height: 20.0,
                    width: 20.0,
                    fit: BoxFit.cover,
                  ),
                  label: const Text(
                    'Google ile Giriş', // Metni kısalttım
                    style: TextStyle(
                      fontSize: 14.0, // Font boyutunu küçülttüm
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, // Yatay padding'i azalttım
                      vertical: 12.0, // Dikey padding'i azalttım
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
