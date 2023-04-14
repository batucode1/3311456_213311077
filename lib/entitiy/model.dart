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
        gideninYorumu: "Güzel bir yer , görmeye değer",
        gidilenYer: "Ulugöl",
      ),
      Yorum(
        gideninYorumu:
            "Teleferik ile çıkarken çok heyecanlandım birdaha asla teleferiği kullanamaycağım yükseklik korkusu olanlara tavsiye etmem. Boztepe güzeldi piknik alanları ve peyzaj olarak ",
        gidilenYer: "Boztepe",
      ),
      Yorum(
        gideninYorumu: "Kaydım ,eğlenceliydi",
        gidilenYer: "Çambaşı Kayak Merkezi",
      ),
      Yorum(
        gideninYorumu: "Pek hoştu, Uzungöl'den tek farkı araplar yoktu",
        gidilenYer: "Ulugöl",
      ),
      Yorum(
        gideninYorumu: "Beğenmedim tavisye etmem",
        gidilenYer: "Ulugöl",
      ),
    ];
  }
}
