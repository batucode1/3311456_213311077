import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vize_proje/view/screens/tabbar_yonetim.dart';

class ProfilEkrani extends StatefulWidget {
  String ad;
  ProfilEkrani({required this.ad});

  @override
  State<ProfilEkrani> createState() => _ProfilEkraniState();
}

class _ProfilEkraniState extends State<ProfilEkrani> {
  @override
  Widget build(BuildContext context) {
    double Gwidth = MediaQuery.of(context).size.width;
    double Gheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: Gwidth,
                  height: 270,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        "assets/manzara.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.25,
                  top: 100,
                  child: Container(
                    child: CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.green,
                      child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            "assets/ardaturan.jpg",
                          )),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "giriş yapanın adı soyadı ",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            _profilButonlari("kullanıcı bilgilerini değiştir"),
            _profilButonlari("profil fotoğrafını değiştir"),
            _profilButonlari("premium üyelik işlemleri"),
            _profilButonlari("çıkış yap"),
          ],
        ),
      )),
    );
  }

  Padding _profilButonlari(String text) {
    return Padding(
      padding: EdgeInsets.all(3),
      child: Container(
          width: double.infinity,
          child: ElevatedButton(onPressed: () {}, child: Text(text))),
    );
  }
}
