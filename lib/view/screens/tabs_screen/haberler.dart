import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vize_proje/constants/string_constant.dart';

import '../../../entitiy/list.dart';
import '../../../widgets/slider_widget.dart';

class HaberlerEkrani extends StatefulWidget {
  const HaberlerEkrani({super.key});

  @override
  State<HaberlerEkrani> createState() => _HaberlerEkraniState();
}

class _HaberlerEkraniState extends State<HaberlerEkrani> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              StringConstant.appBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    StringConstant.haberTitle,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                SliderWidget(SliderImages: SliderImages),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    StringConstant.haberMetni,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
