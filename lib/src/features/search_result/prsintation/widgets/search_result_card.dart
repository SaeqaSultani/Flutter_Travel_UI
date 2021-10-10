import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/search_result/data/model/class_search_result_model.dart';
import 'package:travel_app_ui/widgets/title_widet.dart';

class SearchResultCard extends StatelessWidget {
  const SearchResultCard({
    Key? key,required this.searchResult,required  this.index,
  }) : super(key: key);

  final SearchResultModel searchResult;
  final int index;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
      margin: const EdgeInsets.only(top: 2),
      color: const Color(0xFFFCFCFC),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    image:   DecorationImage(
                        image: AssetImage(searchResult.image),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              const SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  TitleWidget(title: searchResult.title, size: 18, fontWeight: FontWeight.w400, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
                  SizedBox(height: 5,),
                  TitleWidget(title: searchResult.subTitle, size: 13, fontWeight: FontWeight.w400, color: Color(0xFF6F7174), margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
                  SizedBox(height: 5,),
                  SizedBox(
                      width: 150,
                      child: TitleWidget(title: searchResult.description, size: 15, fontWeight: FontWeight.w400, color: Colors.red, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0))),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite_border,color: Colors.red,size: 20,),
                  TitleWidget(title: '1243', size: 14, fontWeight: FontWeight.w400, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0))
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.star_border,color: Colors.green,size: 20,),
                  TitleWidget(title: '4.5', size: 14, fontWeight: FontWeight.w400, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0))
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.person_outline,color: Colors.grey,size: 20,),
                  TitleWidget(title: '54', size: 14, fontWeight: FontWeight.w400, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}