import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constant.dart';

class Booton extends StatelessWidget {
  const Booton({
    Key? key,
    required this.text,
    this.color,
    this.width,
    this.sizeText,
    this.height,
    required this.link,
  }) : super(key: key);

  final String text;
  final Color? color;
  final double? width;
  final double? sizeText;
  final double? height;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: color),
      width: width?? MediaQuery.of(context).size.width * 0.2,
      height:height?? MediaQuery.of(context).size.height * 0.07,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: color,
          gradient: LinearGradient(colors: [
            Colors.pink,
            Colors.blue.shade900,
          ]),
          boxShadow: const [
            BoxShadow(color: Colors.blue,offset: Offset(0, -1),blurRadius: 20),
            BoxShadow(color: Colors.red,offset: Offset(0, 1),blurRadius: 20),
          ]
      ),
      child: TextButton(
        onPressed: () async {
          try {
            await canLaunch(link)
                ? await launch(
              link,
              enableJavaScript: true,
              forceWebView: true,
            )
                : throw 'could not lunch url';
          } catch (e) {
            e.toString();
          }
        },
        child: Text(
          text,
          style: TextStyle(
              color: WhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: sizeText?? MediaQuery.of(context).size.width * 0.02),
        ),
      ),
    ),
    );
  }
}

// ignore: camel_case_types
class iconButton extends StatelessWidget {
  const iconButton({
    Key? key,
    required this.link,
    required this.image,
    this.size,
  }) : super(key: key);

  final String image;
  final String link;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: IconButton(
        icon: Image.asset(image),
        iconSize:size?? MediaQuery.of(context).size.width * 0.03,
        onPressed: () async {
          try {
            await canLaunch(link)
                ? await launch(
              link,
              enableJavaScript: true,
              forceWebView: true,
            )
                : throw 'could not lunch url';
          } catch (e) {
            e.toString();
          }
        },
      ),
    );
  }
}
