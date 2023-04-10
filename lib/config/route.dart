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
        return _route(KayitEkrani());
      case '/anasayfa':
        return _route(AnaSayfa());
      case '/giris':
        return _route(GirisEkrani(
          aktarilanAd: "",
        ));
      case '/tab':
        return _route(TabbarYonetimSayfasi());
      case '/haberler':
        return _route(HaberlerEkrani());
      case '/listeleme':
        return _route(ListelemeEkrani());
      case '/profil':
        return _route(ProfilEkrani(ad: ""));
    }
  }

  static _route(Widget _gidilecekSayfa) {
    return MaterialPageRoute(builder: (context) => _gidilecekSayfa);
  }
}
