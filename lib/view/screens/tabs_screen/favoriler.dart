import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vize_proje/comment/comments_view.dart';
import 'package:vize_proje/constants/string_constant.dart';
import 'package:vize_proje/entitiy/model.dart';

class FavorilerEkrani extends StatefulWidget {
  const FavorilerEkrani({super.key});

  @override
  State<FavorilerEkrani> createState() => _FavorilerEkraniState();
}

class _FavorilerEkraniState extends State<FavorilerEkrani> {
  final YorumList = Yorum.yorumListesi();
  TextEditingController _baslik = TextEditingController();
  TextEditingController _yorum = TextEditingController();
  addPost() {
    String postBasligi = _baslik.value.text;
    String postYorumu = _yorum.value.text;

    if (postYorumu != "" && postBasligi != "") {
      YorumList.add(Yorum(
        gidilenYer: postBasligi,
        gideninYorumu: postYorumu,
      ));

      _yorum.clear();
      _baslik.clear();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Yorumlar",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                tooltip: "yorum ekle",
                onPressed: () {
                  yorum_ekle(context);
                },
                icon: Icon(Icons.ad_units)),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                for (Yorum yorum in YorumList.reversed) PostView(yorum: yorum),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> yorum_ekle(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(top: 50, right: 20, left: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  StringConstant.yorumEkle,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Nereyi ziyaret ettiniz ?",
                            style: Theme.of(context).textTheme.bodyLarge),
                      ),
                      StreamBuilder<String?>(builder: (context, snapshot) {
                        return TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            hintText: " Ulugöl",
                          ),
                          controller: _baslik,
                        );
                      }),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Gittiğiniz yer hakkında düşünceleriniz belirtebilirsiniz",
                          style: Theme.of(context).textTheme.bodyLarge),
                      SizedBox(
                        height: 20,
                      ),
                      StreamBuilder<String?>(builder: (context, snapshot) {
                        return TextFormField(
                          maxLines: 5,
                          maxLength: 100,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: "Beğendim ",
                          ),
                          keyboardType: TextInputType.multiline,
                          controller: _yorum,
                        );
                      }),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    child: Text("yorumunu ekle"),
                    onPressed: () {
                      addPost();
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
