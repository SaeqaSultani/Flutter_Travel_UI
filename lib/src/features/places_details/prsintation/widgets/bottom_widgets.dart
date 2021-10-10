import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/places_details/data/model/class_images.dart';
import 'package:travel_app_ui/src/features/places_details/data/model/class_reasons.dart';
import 'package:travel_app_ui/src/features/places_details/prsintation/widgets/image_card.dart';
import 'package:travel_app_ui/src/features/places_details/prsintation/widgets/reason_widget.dart';
import 'package:travel_app_ui/widgets/title_widet.dart';


class BottomWidgets extends StatelessWidget {
  const BottomWidgets({
    Key? key,
    required this.list,
    required this.items,
  }) : super(key: key);

  final List<Images> list;
  final List<Reasons> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: const Color(0xFFEDEEF0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const TitleWidget(title: 'See photos', size: 16, fontWeight: FontWeight.w600, color: Colors.black, margin: EdgeInsets.only(left: 20,top: 15), padding: EdgeInsets.all(0)),
          const SizedBox(height: 15,),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(list.length, (index){
                    return ImageCard(images: list[index], index: index);
                  })
                ],
              )),
          Container(
              margin:const EdgeInsets.only(left: 20,right: 20,top: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:   [
                    const TitleWidget(title: 'Description', size: 16, fontWeight: FontWeight.w600, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
                    const SizedBox(height: 10,),
                    const SizedBox(
                        width: 200,
                        child: Text('dsgdsghaalkjdslsdmmsfldddddddddddddddddddddddddddddddddlamdfffffffffffffffffffffffskhgjhkdjjjjjjjjg',style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Color(0xFF6F7174)))),
                    const SizedBox(height: 15,),
                    const SizedBox(height: 1,width: 400,child: DecoratedBox(decoration: BoxDecoration(
                        color: Color(0xffE1E3E8)
                    ),),),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TitleWidget(title: 'Why you should visit here', size: 16, fontWeight: FontWeight.w600, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
                        Icon(Icons.keyboard_arrow_up,color: Colors.grey,)
                      ],
                    ),
                    const SizedBox(height: 5,),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          ...List.generate(items.length, (index){
                            return ReasonsWidget(reasonsItems: items[index], index: index);
                          })
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    const SizedBox(height: 1,width: 400,child: DecoratedBox(decoration: BoxDecoration(
                        color: Color(0xffE1E3E8)
                    ),),),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TitleWidget(title: 'Estimated cost', size: 16, fontWeight: FontWeight.w600, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                      ],
                    ),

                  ]
              )
          ),
        ],
      ),
    );
  }
}