import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app_ui/src/features/welcome_page/prsintation/pages/welcome_page.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
  ));

}
