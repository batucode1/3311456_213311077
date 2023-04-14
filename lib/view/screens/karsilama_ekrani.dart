import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:vize_proje/config/route.dart';
import 'package:vize_proje/constants/string_constant.dart';
import 'package:vize_proje/view/screens/giris_ekrani.dart';
import 'package:vize_proje/view/screens/kayit_ekrani.dart';

import '../../constants/images.dart';

class KarsilamaEkrani extends StatelessWidget {
  const KarsilamaEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    double gWidth = MediaQuery.of(context).size.width;
    double yHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.shade200,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: gWidth * 0.1,
              ),
              Text(
                StringConstant.uygAdi,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Lottie.asset(ImagesConstant.earthJson,
                    width: gWidth, height: yHeight * 0.4),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Flexible(
                  child: Row(
                    children: [
                      _kayitGirisButonMethod(context, () {
                        Navigator.pushNamed(context, '/kayit');
                      }, StringConstant.kayitOl, Icon(Icons.add)),
                      SizedBox(width: 40),
                      _kayitGirisButonMethod(context, () {
                        Navigator.pushNamed(context, '/giris');
                      }, StringConstant.girisYap,
                          Icon(Icons.arrow_right_alt_outlined)),
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

  Expanded _kayitGirisButonMethod(
      BuildContext context, dynamic onPressed, String title, Icon icon) {
    return Expanded(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10),
          shape: StadiumBorder(),
          backgroundColor: Colors.green,
        ),
        icon: icon,
        onPressed: onPressed,
        label: Text(title),
      ),
    );
  }
}
