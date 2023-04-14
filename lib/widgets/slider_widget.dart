import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    super.key,
    required this.SliderImages,
  });

  final List<String> SliderImages;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    double gWidth = MediaQuery.of(context).size.width;
    double yHeight = MediaQuery.of(context).size.height;
    return CarouselSlider.builder(
      itemCount: widget.SliderImages.length,
      itemBuilder: (context, index, realIndex) {
        final herBirFotograf = widget.SliderImages[index];
        return Container(
          margin: EdgeInsets.all(5),
          width: gWidth,
          height: 400,
          child: Image.asset(
            herBirFotograf,
            fit: BoxFit.cover,
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        height: 250,
      ),
    );
  }
}
