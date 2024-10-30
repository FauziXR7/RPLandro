import 'package:flutter/material.dart';
import './views/loginview.dart';
import './views/homeview.dart';
import './views/transaksi.dart';
import './views/movieview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/login': (context) => LoginView(),
        '/': (context) => HomeView(),
        '/transaksi': (context) => TransaksiView(),
        '/movie': (context) => MovieView(),
        // '/profile': (_) => ProfileView(),
      },
    );
  }
}
