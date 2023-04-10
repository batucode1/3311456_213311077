import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vize_proje/constants/string_constant.dart';

import 'package:vize_proje/view/screens/tabbar_yonetim.dart';

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
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                child: Container(
                  width: Gwidth * 0.8,
                  height: Yheight * 0.75,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 10,
                          color: Colors.black,
                          blurStyle: BlurStyle.outer),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const UserFields(text: "ad"),
                      const UserFields(text: "soyad"),
                      const UserFields(text: "mail"),
                      const UserFields(text: "şifre"),
                      const UserFields(text: "şifre yeniden"),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/anasayfa');
                          },
                          child: const Text(StringConstant.kaydolVeGir)),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/giris');
                          },
                          child: const Text('kayıtlıysanız giriş yapın')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserFields extends StatelessWidget {
  final String text;
  const UserFields({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 15, 25, 10),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        child: TextField(
          textAlign: TextAlign.left,
          showCursor: false,
          decoration: InputDecoration(
              border: InputBorder.none,
              label: Text(text),
              prefixIcon: Icon(
                Icons.keyboard,
              )),
        ),
      ),
    );
  }
}
