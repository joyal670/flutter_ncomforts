import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final title;
  final textStyle;

  const TextWidget({
    super.key,
    required this.title,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle,
    );
  }
}

class ImageWidget extends StatelessWidget {
  final imgUrl;
  final width;
  final height;
  const ImageWidget({
    super.key,
    required this.imgUrl,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgUrl,
      width: width,
      height: height,
    );
  }
}
