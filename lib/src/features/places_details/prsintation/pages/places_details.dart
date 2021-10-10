import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/places_details/data/model/class_images.dart';
import 'package:travel_app_ui/src/features/places_details/data/model/class_reasons.dart';
import 'package:travel_app_ui/src/features/places_details/prsintation/widgets/bottom_widgets.dart';
import 'package:travel_app_ui/src/features/places_details/prsintation/widgets/midl_widgets.dart';
import 'package:travel_app_ui/src/features/places_details/prsintation/widgets/top_widgets.dart';

class PlaceDetails extends StatefulWidget {

  @override
  _PlaceDetailsState createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {

  List<Images> list = [
    Images('images/5.jpeg'),
    Images('images/1.jpeg'),
    Images('images/2.jpeg'),
    Images('images/3.jpeg'),
    Images('images/4.jpeg'),
    Images('images/5.jpeg'),
    Images('images/1.jpeg'),
  ];

  List<Reasons> items = [
    Reasons(Icons.remove_red_eye_outlined, 'Easy to explore with out any guid'),
    Reasons(Icons.check, 'Easy to explore with out any guid'),
    Reasons(Icons.check, 'Easy to explore with out any guid'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const TopWidgets(),
            const MidlWidgets(),
            const SizedBox(height: 15,),
            BottomWidgets(list: list, items: items)
          ],
        ),
      ),
    );
  }
}







