import 'package:flutter/material.dart';

class UserFields extends StatelessWidget {
  final String text;
  const UserFields({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gWidth = MediaQuery.of(context).size.width;
    double yHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 15, 25, 10),
      child: Container(
        width: gWidth,
        height: yHeight * 0.08,
        child: Material(
          borderRadius: BorderRadius.circular(15),
          child: TextFormField(
            textAlign: TextAlign.left,
            showCursor: false,
            decoration: InputDecoration(
                border: InputBorder.none,
                label: Text(text),
                prefixIcon: Icon(
                  Icons.keyboard,
                )),
          ),
        ),
      ),
    );
  }
}
