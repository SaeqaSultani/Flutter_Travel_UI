import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/find_partner/data/model/class_partner.dart';
import 'package:travel_app_ui/widgets/title_widet.dart';
class PartnerCard extends StatelessWidget {
  const PartnerCard({
    Key? key, required this.partner, required this.index,
  }) : super(key: key);

  final Partner partner;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5,bottom: 5),
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    image:   DecorationImage(
                        image: AssetImage(partner.image),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100)
                ),
              ),
              const SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  TitleWidget(title: partner.title, size: 16, fontWeight: FontWeight.w400, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      TitleWidget(title: 'going to ', size: 13, fontWeight: FontWeight.w400, color: Colors.grey, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
                      TitleWidget(title: partner.sunTitle, size: 13, fontWeight: FontWeight.w400, color: Color(0xFF6F7174), margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      TitleWidget(title: 'on ', size: 10, fontWeight: FontWeight.w400, color: Colors.grey, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
                      TitleWidget(title: partner.date, size: 10, fontWeight: FontWeight.w400, color: Color(0xFF6F7174), margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
                    ],
                  ),
                ],
              )
            ],
          ),
          Container(
              width:30,
              height: 30,
              padding: const EdgeInsets.all(5),
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green,
              ),
              child: Icon(Icons.chat_bubble_rounded,size: 18,color: Colors.white,)
          ),
        ],
      ),
    );
  }
}
