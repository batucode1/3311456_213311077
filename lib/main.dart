import 'package:flutter/material.dart';
import 'package:vize_proje/config/route.dart';
import 'package:vize_proje/view/screens/tabs_screen/anasayfa.dart';
import 'package:vize_proje/view/screens/tabs_screen/favoriler.dart';
import 'package:vize_proje/view/screens/tabs_screen/haberler.dart';
import 'package:vize_proje/view/screens/tabs_screen/profil.dart';
import 'package:vize_proje/view/screens/detay_ekrani.dart';
import 'package:vize_proje/view/screens/giris_ekrani.dart';
import 'package:vize_proje/view/screens/karsilama_ekrani.dart';
import 'package:vize_proje/view/screens/listeleme.dart';
import 'package:vize_proje/view/screens/tabbar_yonetim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteNavigasyon.routeNavigasyon,
      
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        appBarTheme:
            Theme.of(context).appBarTheme.copyWith(color: Colors.green),
        primarySwatch: Colors.green,
      ),
      home: const KarsilamaEkrani(),
    );
  }
}
