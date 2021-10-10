import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/welcome_page/data/model/class_places.dart';

class PlacesCard extends StatelessWidget {
  const PlacesCard({
    Key? key, required this.itemsPlaces,required this.index,
  }) : super(key: key);

  final Places itemsPlaces;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(top:8),
        width:300,
        height: 450,
        decoration: BoxDecoration(
          image:  DecorationImage(
              image: AssetImage(itemsPlaces.image),
              fit: BoxFit.cover),
          color: Colors.green,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 25,
                left: 25,
                child: Row(
                  children:  [
                    const Icon(Icons.favorite_border_outlined,color: Colors.white,),
                    const SizedBox(width: 5,),
                    Text(itemsPlaces.favouriteNum,style:const TextStyle(color: Colors.white),)
                  ],
                )
            ),
            Positioned(
                top: 360,
                left: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(itemsPlaces.title, style: const TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.normal,) ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.bolt,color: Colors.green,),
                        SizedBox(
                          width: 200,
                            child: Text(itemsPlaces.subTitle,style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white))),
                      ],
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
