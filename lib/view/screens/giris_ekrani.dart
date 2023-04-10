import 'package:flutter/material.dart';

import 'package:vize_proje/constants/string_constant.dart';
import 'package:vize_proje/view/screens/tabbar_yonetim.dart';
import 'package:vize_proje/view/screens/tabs_screen/anasayfa.dart';

class GirisEkrani extends StatefulWidget {
  String aktarilanAd;
  GirisEkrani({required this.aktarilanAd});

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController? ad;

  @override
  void initState() {
    ad = TextEditingController();
    super.initState();
  }

  String kulAdi = "";
  String sifre = "";
  String defaultKulAdi = "batu";
  String defaultSifre = "5252";
  void kayitDogrula() {
    if ((kulAdi == defaultKulAdi) && (sifre == defaultSifre)) {
      Navigator.pushNamed(context, "/tab");
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
        appBar: AppBar(
          title: Text(StringConstant.girisYap),
          centerTitle: true,
        ),
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Material(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                          child: TextFormField(
                            controller: ad,
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
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ElevatedButton(
                            onPressed: () {
                              kayitDogrula();
                            },
                            child: const Text(StringConstant.girisYap)),
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
/*
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