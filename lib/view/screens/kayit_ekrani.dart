import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vize_proje/constants/string_constant.dart';

import 'package:vize_proje/view/screens/tabbar_yonetim.dart';

import '../../widgets/elevated_kayit_giris.dart';
import '../../widgets/textfield.dart';

class KayitEkrani extends StatefulWidget {
  const KayitEkrani({super.key});

  @override
  State<KayitEkrani> createState() => _KayitEkraniState();
}

class _KayitEkraniState extends State<KayitEkrani> {
  @override
  Widget build(BuildContext context) {
    double Gwidth = MediaQuery.of(context).size.width;
    double Yheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false, //klavye açılınca hata çıkmaz
        backgroundColor: Colors.green.shade100,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                _hosgeldinTexti(context, StringConstant.kayitTitle1),
                _hosgeldinTexti(context, StringConstant.kayitTitle2),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                  child: Column(
                    children: [
                      const UserFields(text: "ad"),
                      const UserFields(text: "soyad"),
                      const UserFields(text: "mail"),
                      const UserFields(text: "şifre"),
                      KayitVeGirisButonu(
                        Gwidth: Gwidth,
                        Yheight: Yheight,
                        context: context,
                        onPressed: () {},
                        title: StringConstant.kayitOlVeGir,
                        icon: const Icon(Icons.person_add),
                      ),
                      SizedBox(height: 20),
                      KayitVeGirisButonu(
                        Gwidth: Gwidth,
                        Yheight: Yheight,
                        context: context,
                        onPressed: () {
                          Navigator.pushNamed(context, "/giris");
                        },
                        title: StringConstant.kayitliysan,
                        icon: Icon(Icons.turn_right_rounded),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text _hosgeldinTexti(BuildContext context, String title) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(fontWeight: FontWeight.w500, color: Colors.black));
  }
}
