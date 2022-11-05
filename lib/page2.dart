import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page2 extends StatelessWidget {
  final String title;

  Page2(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title), leading: BackButton(onPressed: () {
      Navigator.of(context).pop("HI");
    },),), );
  }
}