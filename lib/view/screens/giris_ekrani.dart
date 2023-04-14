import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:vize_proje/constants/string_constant.dart';
import 'package:vize_proje/view/screens/tabbar_yonetim.dart';
import 'package:vize_proje/view/screens/tabs_screen/anasayfa.dart';
import 'package:vize_proje/view/screens/tabs_screen/profil.dart';

import '../../constants/images.dart';
import '../../widgets/elevated_kayit_giris.dart';

class GirisEkrani extends StatefulWidget {
  const GirisEkrani({Key? key}) : super(key: key);
  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController nameController = TextEditingController();

  String kulAdi = "";
  String sifre = "";
  String defaultKulAdi_1 = "batu";
  String defaultSifre_1 = "5252";
  String defaultKulAdi_2 = "deneme";
  String defaultSifre_2 = "deneme";
  void kayitDogrula() {
    if ((kulAdi == defaultKulAdi_1) && (sifre == defaultSifre_1) ||
        (kulAdi == defaultKulAdi_2) && (sifre == defaultSifre_2)) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TabbarYonetimSayfasi(
              aktarilanAd: nameController
                  .value.text) //ProfilEkrani(ad: nameController.value.text),
          ));
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Center(
                    child: Text(
                      StringConstant.errorShowDialog1,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(StringConstant.errorShowDialog2),
                ),
              ],
            ),
          );
        },
      );
    }
  }

  var form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double Gwidth = MediaQuery.of(context).size.width;
    double Yheight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.shade100,

        resizeToAvoidBottomInset: false, //klavye açılınca hata çıkmaz

        body: Form(
          key: form,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                  child: Column(
                    children: [
                      Lottie.asset(ImagesConstant.welcomeJson,
                          width: Gwidth, height: Yheight * 0.4),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Material(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                          child: TextFormField(
                            controller: nameController,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (girilenKuladi) {
                              setState(() {
                                kulAdi = girilenKuladi;
                              });
                            },
                            textAlign: TextAlign.left,
                            showCursor: false,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                label: Text(StringConstant.kullaniciAdi,
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                prefixIcon: Icon(
                                  Icons.keyboard,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Material(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                          child: TextFormField(
                            onChanged: (alinanSifre) {
                              setState(() {
                                sifre = alinanSifre;
                              });
                            },
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.visiblePassword,
                            showCursor: false,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                label: Text(
                                  StringConstant.sifre,
                                  style: TextStyle(color: Colors.white),
                                ),
                                prefixIcon: Icon(
                                  Icons.password,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                      KayitVeGirisButonu(
                        Gwidth: Gwidth,
                        Yheight: Yheight,
                        context: context,
                        onPressed: kayitDogrula,
                        title: "giriş yap",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(StringConstant.sifremiUnuttum),
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
}
/*                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ElevatedButton(
                            onPressed: () {
                              kayitDogrula();
                            },
                            child: const Text(StringConstant.girisYap)),
                      ),


class UserFields extends StatefulWidget {
  final String text;
  const UserFields({Key? key, required this.text}) : super(key: key);

  @override
  State<UserFields> createState() => _UserFieldsState();
}

class _UserFieldsState extends State<UserFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        child: TextField(
          onChanged: (deger) {
            setState(() {});
          },
          textAlign: TextAlign.left,
          showCursor: false,
          decoration: InputDecoration(
              border: InputBorder.none,
              label: Text(widget.text),
              prefixIcon: Icon(
                Icons.keyboard,
              )),
        ),
      ),
    );
  }
}
*/