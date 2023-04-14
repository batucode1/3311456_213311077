import 'package:flutter/material.dart';

class KayitVeGirisButonu extends StatelessWidget {
  const KayitVeGirisButonu({
    super.key,
    required this.Gwidth,
    required this.Yheight,
    required this.context,
    required this.onPressed,
    required this.title,
    required this.icon,
  });
  final Icon icon;
  final double Gwidth;
  final double Yheight;
  final BuildContext context;
  final onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      label: Text(title),
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(color: Colors.white),
        padding: EdgeInsets.all(10),
        fixedSize: Size(Gwidth * 0.7, Yheight * 0.07),
        backgroundColor: Colors.green,
        side: BorderSide(color: Colors.white, width: 5),
        shape: StadiumBorder(),
      ),
      onPressed: onPressed,
    );
  }
}
