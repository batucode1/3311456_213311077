import '../constants/images.dart';
import 'model.dart';

class listeString {
  static const String boztepeDetay =
      " Karadeniz'in en uzun teleferik hattı olup, Ordu'nun Boztepe tepesinden şehir merkezine kadar 8-10 dakika arasında muhteşem manzaralar eşliğinde keyifli bir yolculuk sunmaktadır.";
  static const String cambasiDetay =
      "Ordu'nun Kabadüz ilçesinde yer alan doğal güzellikleriyle ünlü bir kayak merkezidir ve her kış sezonunda yerli ve yabancı turistler tarafından yoğun ilgi görmektedir.";
  static const String sahilDetay =
      "Doğal güzellikleri, temiz plajları ve nefes kesici manzaralarıyla Karadeniz'in en gözde turistik destinasyonlarından biridir.";
  static const String ulugolDetay =
      " Ordu'nun Altınordu ilçesi sınırları içinde yer alan doğal bir krater gölüdür ve yüzeyi 1.500 metrekareyi bulan bu göl, etrafındaki yemyeşil doğası ve doğal güzellikleriyle turistlerin gözdesi bir yerdir.";
}

List<DetayYazisi> detayListesi = [
  DetayYazisi(
      baslik: "BOZTEPE TELEFERİK",
      detay: listeString.boztepeDetay,
      foto: ImagesConstant.manzara),
  DetayYazisi(
      baslik: "ÇAMBAŞI KAYAK MERKEZİ",
      detay: listeString.cambasiDetay,
      foto: ImagesConstant.cambasi),
  DetayYazisi(
      baslik: "ORDU SAHİL",
      detay: listeString.sahilDetay,
      foto: ImagesConstant.sahil),
  DetayYazisi(
      baslik: "ULUGÖL TABİAT PARKI",
      detay: listeString.ulugolDetay,
      foto: ImagesConstant.ulugol),
];

List<Map> Categories = [
  {"name": "tarihi", "seciliMi": false},
  {"name": "yöresel ", "seciliMi": false},
  {"name": "park", "seciliMi": true},
  {"name": "sahil", "seciliMi": false},
];

//SLİDER FOTOĞRAF LİSTESİ
final SliderImages = [
  ImagesConstant.teleferik,
  ImagesConstant.ulugol2,
  ImagesConstant.cambasi,
  ImagesConstant.sahil,
];

/* enum jpgImages {
  //her image ı bu şekilde tanımlıyoruz önce.
  foto('manzara');

//sonra iconun ismini atayabileceğimiz bir value değişkeni oluşturuyoruz
  final String
      value; //enum ı başka yerde çağırdığımıda kullanıması için değişkeni atıyoruz
  const jpgImages(this.value);
  String get toJpg =>
      'assets/$value.png'; //burda da imageımızı yoluna ekleyip hazırlıyoruz.
  Image get toImage => Image.asset(
      toJpg); //son olarak iç içe for gibi tanımlarımızı iç içe kullanıyoruz ki kullandığımız yerlerde kod kalabalığı olabildiğince azalsın.
  // toPngyi toImage içine atıyoruz
}
//IconConstants.appIcon.toImage,

*/