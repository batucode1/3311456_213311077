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
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green.shade100,
        ),
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        height: MediaQuery.of(context).size.height * 0.20,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /* Text(
                  yorum.gidilenYer!,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(yorum.gideninYorumu!,style: Theme.of(context).textTheme.labelLarge,),
              */
              ListTile(
                title: Text(yorum.gidilenYer.toString()),
                subtitle: Text(yorum.gideninYorumu.toString()),
                leading: Icon(Icons.people),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
