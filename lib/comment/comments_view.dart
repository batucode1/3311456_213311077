import 'package:flutter/material.dart';
import 'package:vize_proje/entity/model.dart';

class PostView extends StatelessWidget {
  final Yorum yorum;
  const PostView({
    Key? key,
    required this.yorum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green.shade100,
        ),
        margin: EdgeInsets.only(top: 20, bottom: 20),
        width: double.maxFinite,
        height: 200,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    yorum.gidilenYer!,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Container(color: Colors.red, width: 150, height: 150),
                ],
              ),
              Text(yorum.gideninYorumu!),
            ],
          ),
        ),
      ),
    );
  }
}
