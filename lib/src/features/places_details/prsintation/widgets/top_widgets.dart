import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/title_widet.dart';

class TopWidgets extends StatelessWidget {
  const TopWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: Stack(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              image:   DecorationImage(
                  image: AssetImage('images/5.jpeg'),
                  fit: BoxFit.cover),
              color: Colors.green,
            ),
            child: Stack(
              children:  [
                const Positioned(
                  top: 30,
                  left: 20,
                  child: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Row(
                    children:  const [
                      Icon(Icons.favorite_border_outlined,color: Colors.white,),
                      SizedBox(width: 5,),
                      Text('3456',style:TextStyle(color: Colors.white),),
                      SizedBox(width: 25,),
                      Icon(Icons.share_outlined,color: Colors.white,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 380,
            right: 20,
            child: Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
                child:const TitleWidget(title: 'Travel with FlyMe', size: 14, fontWeight: FontWeight.w600, color: Colors.white, margin: EdgeInsets.all(0), padding: EdgeInsets.all(10))
            ),
          )
        ],
      ),
    );
  }
}
