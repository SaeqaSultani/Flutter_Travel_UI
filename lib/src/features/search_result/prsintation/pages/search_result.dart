import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/search_result/data/model/class_search_result_model.dart';
import 'package:travel_app_ui/src/features/search_result/prsintation/widgets/search_result_card.dart';
import 'package:travel_app_ui/widgets/title_widet.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {


  List<SearchResultModel> list = [
    SearchResultModel('Manorola', 'Italy', 'Best places to visit now', 'images/1.jpeg'),
    SearchResultModel('Manorola', 'Italy', 'Best places to visit now', 'images/2.jpeg'),
    SearchResultModel('Manorola', 'Italy', 'Best places to visit now', 'images/3.jpeg'),
    SearchResultModel('Manorola', 'Italy', 'Best places to visit now', 'images/4.jpeg'),
    SearchResultModel('Manorola', 'Italy', 'Best places to visit now', 'images/5.jpeg'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEEF0),
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title:const TitleWidget(title: 'Search for Result', size: 18, fontWeight: FontWeight.w400, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0)),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_rounded,color: Colors.grey,size: 20,),
      ),
      body: Column(
        children:  [
          Container(
            height: 50,
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.search,color: Colors.green,size: 20,),
                      SizedBox(width: 5,),
                      TitleWidget(title: 'Italy', size: 16, fontWeight: FontWeight.w400, color: Colors.black, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0))
                    ],
                  ),
                  Container(
                      width:65,
                      padding: const EdgeInsets.all(5),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.filter_alt_outlined,color: Colors.white,size: 15,),
                          TitleWidget(title: 'FILTER', size: 11, fontWeight: FontWeight.w400, color: Colors.white, margin: EdgeInsets.all(0), padding: EdgeInsets.all(0))
                        ],
                      )
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ...List.generate(list.length, (index){
                    return SearchResultCard(searchResult: list[index], index: index);
                  }),
                  const SizedBox(
                    height: 80,
                    child: Center(
                      child: Text(
                          'End of search',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


