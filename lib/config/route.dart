import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vize_proje/view/screens/tabs_screen/profil.dart';
import 'package:vize_proje/view/screens/giris_ekrani.dart';
import 'package:vize_proje/view/screens/kayit_ekrani.dart';
import 'package:vize_proje/view/screens/listeleme.dart';
import 'package:vize_proje/view/screens/tabbar_yonetim.dart';
import 'package:vize_proje/view/screens/tabs_screen/anasayfa.dart';
import 'package:vize_proje/view/screens/tabs_screen/haberler.dart';

class RouteNavigasyon {
  static Route<dynamic>? routeNavigasyon(RouteSettings settings) {
    switch (settings.name) {
      case '/kayit':
        return _route(const KayitEkrani());
      case '/anasayfa':
        return _route(const AnaSayfa());
      case '/giris':
        return _route(const GirisEkrani());

      case '/haberler':
        return _route(const HaberlerEkrani());
      case '/listeleme':
        return _route(const ListelemeEkrani());
    }
  }

  static _route(Widget _gidilecekSayfa) {
    return MaterialPageRoute(builder: (context) => _gidilecekSayfa);
  }
}
