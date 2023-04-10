import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HaberlerEkrani extends StatefulWidget {
  const HaberlerEkrani({super.key});

  @override
  State<HaberlerEkrani> createState() => _HaberlerEkraniState();
}

class _HaberlerEkraniState extends State<HaberlerEkrani> {
  final SliderImages = [
    'assets/manzara.jpg',
    'assets/ardaturan.jpg',
    'assets/app_logo.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("her gün farklı bir yer hakkında bilgiler"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Ordunun gözdesi Boztepe",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                CarouselSlider.builder(
                  itemCount: SliderImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final herBirFotograf = SliderImages[index];
                    return Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      child: Image.asset(herBirFotograf),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)." *
                        2,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
