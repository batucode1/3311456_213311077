import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vize_proje/constants/string_constant.dart';
import 'package:vize_proje/entitiy/model.dart';
import 'package:vize_proje/view/screens/tabbar_yonetim.dart';

import '../../constants/images.dart';

class DetayEkrani extends StatelessWidget {
  const DetayEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          StringConstant.detaylarAppBarText,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.white),
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
                  StringConstant.detaylarBaslik,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 20),
                Text(
                  StringConstant.detaylarAciklama1,
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
                              Text(StringConstant.detaylarAciklama2,
                                  style:
                                      Theme.of(context).textTheme.labelLarge),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            width: 300,
                            height: 200,
                            child: Image.asset(ImagesConstant.manzara)),
                      ),
                    ],
                  ),
                ),
                Text(
                  StringConstant.detaylarParagraf1,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Image.asset(
                        ImagesConstant.boztepe,
                        fit: BoxFit.cover,
                      )),
                ),
                Text(StringConstant.detaylarParagraf2,
                    style: Theme.of(context).textTheme.labelLarge),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Image.asset(
                        ImagesConstant.boztepe_parasut,
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
