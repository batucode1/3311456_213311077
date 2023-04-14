import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vize_proje/constants/string_constant.dart';
import 'package:vize_proje/view/screens/kayit_ekrani.dart';
import 'package:vize_proje/view/screens/listeleme.dart';
import 'package:vize_proje/widgets/textfield.dart';

import '../../../entitiy/list.dart';
import '../../../widgets/dropdownformfield.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  final sehirler = ["ordu", "trabzon", "sinop", "samsun"];
  final ilceler = ["altınordu", "fatsa", "ünye", "perşembe"];

  String? secilen_il;
  String? secilen_ilce;
  _DropDownButtonDurumu() {
    secilen_il = sehirler[0];
    secilen_ilce = ilceler[0];
  }

  @override
  Widget build(BuildContext context) {
    double Gwidth = MediaQuery.of(context).size.width;
    double Yheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "nereleri gezmek istersin",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        StringConstant.geziTuru,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
                        child: Material(
                          //rowun belli bir yüksekliğe oturması için kullandım materialı
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: DropDownFormField(
                                      ilSec: "il seç",
                                      onChanged: (value) {
                                        setState(() {
                                          secilen_il = value.toString();
                                        });
                                      },
                                      bolge: sehirler.map((herDeger) {
                                        return DropdownMenuItem(
                                          child: Text(herDeger),
                                          value: herDeger,
                                        );
                                      }))),
                              SizedBox(width: Gwidth * 0.01),
                              Expanded(
                                child: DropDownFormField(
                                    ilSec: "ilçe seç",
                                    onChanged: (value) {
                                      setState(() {
                                        secilen_ilce = value.toString();
                                      });
                                    },
                                    bolge: ilceler.map((herDeger) {
                                      return DropdownMenuItem(
                                          child: Text(herDeger),
                                          value: herDeger);
                                    })),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: Gwidth * 0.7,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              StringConstant.geziTuru2,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            ...Categories.map((seciliDeger) {
                              return CheckboxListTile(
                                  checkboxShape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  activeColor: Colors.green,
                                  checkColor: Colors.white,
                                  title: Text(
                                    seciliDeger['name'],
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  value: seciliDeger['seciliMi'],
                                  onChanged: (deger) {
                                    seciliDeger['seciliMi'] = deger;
                                  });
                            }).toList(),
                          ],
                        ),
                      ),
                      Container(
                        width: Gwidth * 0.4,
                        child: ElevatedButton.icon(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            Navigator.pushNamed(context, '/listeleme');
                          },
                          label: Text(
                            StringConstant.ara,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/* 
 Padding(
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                borderRadius: BorderRadius.circular(20),
                dropdownColor: Colors.red,
                elevation: 20,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
                value: secilen_il,
                items: const [
                  DropdownMenuItem(
                    child: Text("ordu"),
                    value: "ordu",
                  ),
                  DropdownMenuItem(
                    child: Text("trabzon"),
                    value: "trabzon",
                  ),
                  DropdownMenuItem(
                    child: Text("sinop"),
                    value: "sinop",
                  ),
                  DropdownMenuItem(
                    child: Text("samsun"),
                    value: "samsun",
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    secilen_il = value.toString();
                  });
                },
              ),
            ),
*/
/*
  Padding(
                        padding: const EdgeInsets.all(10),
                        child: DropdownButtonFormField(

                            //decoration için formfield kullandık
                            icon: const Icon(
                              Icons.arrow_drop_down_circle_outlined,
                              color: Colors.green,
                            ),
                            dropdownColor: Colors.green.shade50,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("sehir sec"),
                                prefixIcon: Icon(Icons.send)),
                            value: secilen_il,
                            items: sehirler.map((herBirDeger) {
                              return DropdownMenuItem(
                                  child: Text(herBirDeger), value: herBirDeger);
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                secilen_il = value.toString();
                              });
                            }),
                      ),
*/
