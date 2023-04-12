import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vize_proje/comment/comments_view.dart';
import 'package:vize_proje/constants/string_constant.dart';
import 'package:vize_proje/entity/model.dart';

class FavorilerEkrani extends StatefulWidget {
  const FavorilerEkrani({super.key});

  @override
  State<FavorilerEkrani> createState() => _FavorilerEkraniState();
}

class _FavorilerEkraniState extends State<FavorilerEkrani> {
  final YorumList = Yorum.yorumListesi();
  TextEditingController _baslik =
      TextEditingController();
  TextEditingController _yorum =
      TextEditingController();
  addPost() {
    String postTitle = _baslik.value.text;
    String postDescription = _yorum.value.text;

    if (postDescription != "" && postTitle != "") {
      YorumList.add(Yorum(
        gidilenYer: postTitle,
        gideninYorumu: postDescription,
      ));

      _yorum.clear();
      _baslik.clear();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title: Text("İnsanların Favorileri"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
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
                  for (Yorum yorum in YorumList.reversed) PostView(yorum: yorum)
                ],
              ),
            ),
          ),
        ));
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      StringConstant.yorumSayfasiBaslik,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Form(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(StringConstant.yorumSayfasiGonderiBasligi,
                            style: Theme.of(context).textTheme.bodyText2),
                      ),
                      StreamBuilder<String?>(builder: (context, snapshot) {
                     
                        return TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                           
                          ),
                          controller: _baslik,
                        );
                      }),
                    ],
                  ),
                )),
                Form(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(StringConstant.yorumSayfasiYorumBasligi,
                            style: Theme.of(context).textTheme.bodyText2),
                        StreamBuilder<String?>(builder: (context, snapshot) {
                          var hintText2 =
                              'En son bir etkinlik yapılacaktı, haber yok mu..';
                          return TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: hintText2,
                            ),
                            keyboardType: TextInputType.multiline,
                            controller: _yorum,
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text("ekle"),
                  onPressed: () {
                    addPost();
                    setState(() {});
                  },
                ),
              ],
            ),
          );
        });
  }
}
