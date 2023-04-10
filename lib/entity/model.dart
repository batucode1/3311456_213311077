import 'package:flutter/material.dart';

class DetayYazisi {
  String? baslik;
  String? detay;
  String? foto;
  DetayYazisi({
    required this.foto,
    required this.baslik,
    required this.detay,
  });
}

List<DetayYazisi> detayListesi = [
  DetayYazisi(baslik: "baslik1", detay: "detay1", foto: "assets/manzara.jpg"),
  DetayYazisi(baslik: "baslik2", detay: "detay2", foto: "assets/manzara.jpg"),
  DetayYazisi(baslik: "baslik3", detay: "detay3", foto: "assets/manzara.jpg"),
  DetayYazisi(baslik: "baslik4", detay: "detay4", foto: "assets/ardaturan.jpg"),
];

class Yorum {
  String? gidilenYer;
  String? gideninYorumu;

  Yorum({
    required this.gidilenYer,
    required this.gideninYorumu,
  });

  static List<Yorum> yorumListesi() {
    return [
      Yorum(
        gideninYorumu: "anayazi",
        gidilenYer: "kucukYazi",
      ),
      Yorum(
        gideninYorumu: "anayazi3",
        gidilenYer: "kucukYazi5",
      ),
      Yorum(
        gideninYorumu: "anayazi42",
        gidilenYer: "kucukYazi3",
      ),
      Yorum(
        gideninYorumu: "anayazi21",
        gidilenYer: "kucukYazi2",
      ),
      Yorum(
        gideninYorumu: "anayazi23",
        gidilenYer: "kucukYazi12",
      ),
    ];
  }
}
