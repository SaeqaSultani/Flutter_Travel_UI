import 'package:flutter/material.dart';
class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,required this.title,required this.size,required this.fontWeight,required this.color, required this.margin, required this.padding,
  }) : super(key: key);

  final String title;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final EdgeInsets margin;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      child:  Text(
        title,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: size,
          color: color
        ),
      ),
    );
  }
}
