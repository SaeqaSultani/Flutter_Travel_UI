import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/find_partner/data/model/class_partner.dart';
import 'package:travel_app_ui/src/features/find_partner/prsintation/widgets/partner_card.dart';
import 'package:travel_app_ui/widgets/title_widet.dart';

class FindPartner extends StatefulWidget {
  const FindPartner({Key? key}) : super(key: key);

  @override
  _FindPartnerState createState() => _FindPartnerState();
}

class _FindPartnerState extends State<FindPartner> {

  List<Partner> items = [
    Partner('images/6.jpeg', 'Ann Robinson', 'Brazil', 'Mar 23,2021'),
    Partner('images/7.jpeg', 'Ann Robinson', 'Brazil', 'Mar 23,2021'),
    Partner('images/8.jpeg', 'Ann Robinson', 'Brazil', 'Mar 23,2021'),
    Partner('images/9.jpeg', 'Ann Robinson', 'Brazil', 'Mar 23,2021'),
    Partner('images/10.jpeg', 'Ann Robinson', 'Brazil', 'Mar 23,2021'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEEF0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEDEEF0),
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: const Icon(Icons.arrow_back_ios_rounded,color: Colors.grey,size: 20,),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10,left: 25,right: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
                TitleWidget(title: 'Find your trip partner', size: 30, fontWeight: FontWeight.w400,color: Colors.black,margin: EdgeInsets.all(0.0),padding: EdgeInsets.all(0.0),),
                SizedBox(height: 8,),
                TitleWidget(title: '402 people are planning to visit Bali,Indonesia', size: 14, fontWeight: FontWeight.w400, color: Color(0xFF6F7174), margin: EdgeInsets.all(0.0), padding: EdgeInsets.all(0)),
                SizedBox(height: 30,),
                Container(
                  height: 50,
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
                SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ...List.generate(items.length, (index){
                      return PartnerCard(partner: items[index], index: index);
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

