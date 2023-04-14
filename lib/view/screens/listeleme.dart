import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vize_proje/entitiy/model.dart';
import 'package:vize_proje/view/screens/detay_ekrani.dart';
import 'package:vize_proje/view/screens/giris_ekrani.dart';
import 'package:vize_proje/view/screens/tabs_screen/haberler.dart';
import 'package:vize_proje/view/screens/tabbar_yonetim.dart';

import '../../entitiy/list.dart';

class ListelemeEkrani extends StatefulWidget {
  const ListelemeEkrani({super.key});

  @override
  State<ListelemeEkrani> createState() => _ListelemeEkraniState();
}

class _ListelemeEkraniState extends State<ListelemeEkrani> {
  @override
  Widget build(BuildContext context) {
    double gWidth = MediaQuery.of(context).size.width;
    double yHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Sonuçlar",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              liste(),
            ],
          ),
        ),
      ),
    );
  }

  liste() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: listeleme,
      itemCount: detayListesi.length,
    );
  }

  Widget listeleme(context, index) {
    var ListeDonusumu = detayListesi
        .map(
          (detayDonusum) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetayEkrani(),
                ));
              },
              child: Card(
                elevation: 20,
                color: Colors.white,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            detayDonusum.baslik.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          detayDonusum.detay!,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                detayDonusum.foto!,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
        .toList();
    return ListeDonusumu[index];
  }
}
