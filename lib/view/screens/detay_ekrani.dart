import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vize_proje/entity/model.dart';
import 'package:vize_proje/view/screens/tabbar_yonetim.dart';

class DetayEkrani extends StatelessWidget {
  const DetayEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "data" * 5,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "data" * 2,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "data" * 20,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Text("data" * 30),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            width: 300,
                            height: 200,
                            child: Image.asset("assets/manzara.jpg")),
                      ),
                    ],
                  ),
                ),
                Text("data" * 100),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Image.asset("assets/manzara.jpg")),
                ),
                Text("data" * 50),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Image.asset("assets/manzara.jpg")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
