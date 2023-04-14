import 'package:flutter/material.dart';
import 'package:vize_proje/entitiy/model.dart';

class PostView extends StatelessWidget {
  final Yorum yorum;
  const PostView({
    Key? key,
    required this.yorum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gWidth = MediaQuery.of(context).size.width;
    double yHeight = MediaQuery.of(context).size.height;

    return Container(
      width: gWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green.shade100,
      ),
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      height: yHeight * 0.20,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Text(yorum.gidilenYer.toString()),
              subtitle: Text(yorum.gideninYorumu.toString()),
              leading: Icon(Icons.people),
            ),
          ],
        ),
      ),
    );
  }
}
