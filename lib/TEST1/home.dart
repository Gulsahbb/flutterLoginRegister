import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: const Center(
        child: Column(
          children[
          Text('Ana Sayfa İçeriği'),
          Text('Görsel ve yazılar ekle. '), 
         ] 
         ), 
      ),
    );
  }
}
