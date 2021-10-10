import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/welcome_page/data/model/class_places.dart';
import 'package:travel_app_ui/src/features/welcome_page/prsintation/widgets/place_card.dart';
import 'package:travel_app_ui/widgets/title_widet.dart';


class Explore extends StatefulWidget {

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  List<Places> items = [
    Places("234", 'images/1.jpeg', 'Rialto Bridge, Italy', '302 people are currently visiting'),
    Places('234', 'images/2.jpeg', 'Rialto Bridge, Italy', '302 people are currently visiting'),
    Places('234', 'images/3.jpeg', 'Rialto Bridge, Italy', '302 people are currently visiting'),
    Places('234', 'images/4.jpeg', 'Rialto Bridge, Italy', '302 people are currently visiting'),
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFEDEEF0),
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        toolbarHeight: 100,
        backgroundColor:const Color(0xFFEDEEF0),
        title: Container(
            height: 50,
            margin: const EdgeInsets.only(left: 10,right: 10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Try London, Bangkok etc',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.green,
                  )),
            )
        ),
      ),
      body: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
               const TitleWidget(title: 'Explore new place and new people', size: 30, fontWeight: FontWeight.w400,color: Colors.black,margin: EdgeInsets.only(left: 30,right: 30,),padding: EdgeInsets.only(left: 0.5,right: 0.5,bottom: 0.5),),
              const TitleWidget(title: '18,402 people are currently traveling with FlyMe', size: 14, fontWeight: FontWeight.w400, color: Color(0xFF6F7174), margin: const EdgeInsets.only(left: 30,right: 30,top: 5), padding: EdgeInsets.all(0)),
              Container(
                margin: const EdgeInsets.only(left: 8,),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(items.length, (index){
                        return PlacesCard(itemsPlaces: items[index], index: index);
                      })
                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}

