import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/find_partner/prsintation/pages/find_partner.dart';
import 'package:travel_app_ui/src/features/places_details/prsintation/pages/places_details.dart';
import 'package:travel_app_ui/src/features/search_result/prsintation/pages/search_result.dart';
import 'package:travel_app_ui/src/features/welcome_page/prsintation/pages/explore.dart';



class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  int _selectedItemIndex = 0;
  final List<Widget> _widgetOptions = [
    Explore(),
    PlaceDetails(),
    FindPartner(),
    SearchResult(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: Row(
          children: [
            buildBottomNavBarItem('Explore',Icons.location_city, 0),
            buildBottomNavBarItem('Trending',Icons.bolt_outlined, 1),
            buildBottomNavBarItem('Partners',Icons.group_outlined, 2),
            buildBottomNavBarItem('Favourite',Icons.favorite_border, 3),
            buildBottomNavBarItem('Favourite',Icons.settings_outlined, 4),
          ],
        ),
      body:_widgetOptions.elementAt(_selectedItemIndex),
    );
  }

  Widget buildBottomNavBarItem(String text, IconData icon,int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        color: Colors.white,
        height: 55,
        width: MediaQuery.of(context).size.width / 5,
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Icon(
              icon,
              color: _selectedItemIndex == index ? Colors.green : Colors.black,
              size: 26,
            ),
            // new SvgPicture.asset('assets/svg/results_inactive.svg',height: 15),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: index == _selectedItemIndex
                    ? Colors.green
                    : Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

}

