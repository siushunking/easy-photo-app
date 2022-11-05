import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page2 extends StatelessWidget {
  final String title;
  final String url;
  Page2(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), leading: BackButton(onPressed: () {
      Navigator.of(context).pop("HI");
    },),), 
    body: Center(child: Image.network(url),),
    );
  }
}