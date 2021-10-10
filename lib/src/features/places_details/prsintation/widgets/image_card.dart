import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/places_details/data/model/class_images.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,required this.images, required this.index,
  }) : super(key: key);

  final Images images;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 100,
        height: 140,
        decoration: BoxDecoration(
            image:  DecorationImage(
                image: AssetImage(images.image),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}