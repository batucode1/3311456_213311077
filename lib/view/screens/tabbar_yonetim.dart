import 'package:flutter/material.dart';

import 'package:vize_proje/view/screens/giris_ekrani.dart';
import 'package:vize_proje/view/screens/kayit_ekrani.dart';
import 'package:vize_proje/view/screens/tabs_screen/anasayfa.dart';
import 'package:vize_proje/view/screens/tabs_screen/favoriler.dart';
import 'package:vize_proje/view/screens/tabs_screen/haberler.dart';
import 'package:vize_proje/view/screens/tabs_screen/profil.dart';

class TabbarYonetimSayfasi extends StatefulWidget {
  String aktarilanAd;
  TabbarYonetimSayfasi({required this.aktarilanAd});

  @override
  State<TabbarYonetimSayfasi> createState() => _TabbarYonetimSayfasiState();
}

class _TabbarYonetimSayfasiState extends State<TabbarYonetimSayfasi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabButonlari.values.length,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).colorScheme.primary,
          child: TabBar(
            indicatorColor: Colors.white,
            tabs: _tabButonlari.values
                .map((e) => Tab(
                      child: Text(
                        '${e.name}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
                .toList(),
          ),
        ),
        body: TabBarView(children: [
          AnaSayfa(),
          FavorilerEkrani(),
          HaberlerEkrani(),
          ProfilEkrani(ad: widget.aktarilanAd),
        ]),
      ),
    );
  }
}

enum _tabButonlari { anasayfa, favoriler, haberler, profil }
