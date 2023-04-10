import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vize_proje/comment/comments_view.dart';
import 'package:vize_proje/entity/model.dart';

class FavorilerEkrani extends StatefulWidget {
  const FavorilerEkrani({super.key});

  @override
  State<FavorilerEkrani> createState() => _FavorilerEkraniState();
}

class _FavorilerEkraniState extends State<FavorilerEkrani> {
  final YorumList = Yorum.yorumListesi();
  TextEditingController _postTitleTextEditingController =
      TextEditingController();
  TextEditingController _postDescriptionTextEditingController =
      TextEditingController();
  addPost() {
    String postTitle = _postTitleTextEditingController.value.text;
    String postDescription = _postDescriptionTextEditingController.value.text;

    if (postDescription != "" && postTitle != "") {
      YorumList.add(Yorum(
        gidilenYer: postTitle,
        gideninYorumu: postDescription,
      ));

      _postDescriptionTextEditingController.clear();
      _postTitleTextEditingController.clear();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Yorumlar"),
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
          var pageTitle = "Gönderi Paylaş";
          var title = "Gönderi Başlığı Giriniz ";
          var description = "Gönderi Açıklaması Giriniz ";
          var _facultyField = "Fakülte Seçiniz";
          var buttonText = "YAYINLA";
          return Padding(
            padding: EdgeInsets.only(top: 50, right: 20, left: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      pageTitle,
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
                        child: Text(title,
                            style: Theme.of(context).textTheme.bodyText2),
                      ),
                      /*StreamBuilder<String?>(builder: (context, snapshot) {
                        var hintText1 = 'Topluluk etkinliğine ne oldu??';
                        return TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: hintText1,
                          ),
                          controller: _postTitleTextEditingController,
                        );
                      }),*/
                    ],
                  ),
                )),
                /*Form(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(description,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                      StreamBuilder<String?>(
                                          builder: (context, snapshot) {
                                        var hintText2 =
                                            'En son bir etkinlik yapılacaktı, haber yok mu..';
                                        return TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: hintText2,
                                          ),
                                          keyboardType:
                                              TextInputType.multiline,
                                          controller:
                                              _postDescriptionTextEditingController,
                                        );
                                      }),
                                    ],
                                  ),
                                ),
                              ),*/
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
