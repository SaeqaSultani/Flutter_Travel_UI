import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/title_widet.dart';


class MidlWidgets extends StatelessWidget {
  const MidlWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width:80,
              padding: const EdgeInsets.all(5),
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              child: Row(
                children: const [
                  Icon(Icons.bolt,color: Colors.white,size: 15,),
                  TitleWidget(title: 'TRENDING', size: 10, fontWeight: FontWeight.w600, color: Colors.white, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0))
                ],
              )
          ),
          const SizedBox(height: 10,),
          const TitleWidget(title: 'Manorola,Italy', size: 24, fontWeight: FontWeight.w400, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
          const SizedBox(height: 5,),
          const TitleWidget(title: 'Best place to see natural views', size: 14, fontWeight: FontWeight.w400, color: Color(0xFF6F7174), margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
          const SizedBox(height: 12,),
          Row(
            children: const [
              Icon(Icons.star_border_outlined,color: Colors.green,size: 15,),
              SizedBox(width: 5,),
              Text('4.9 out of 5',style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.w400),),
            ],
          )
        ],
      ),
    );
  }
}
